Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id 07E741804A6
	for <lists+blinux-list@lfdr.de>; Tue, 10 Mar 2020 18:19:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583860799;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=s+c0/WDIgh3lmvyJFk299YkNogeSoTlUf+/aTuHUJsM=;
	b=h4WdyouaC5dKxqxbX9ho1ZcneHlmk6BSUA13VpKzk09+jhG+iyCVwVqBzqdafCZ3nKH+Xg
	Q/mJiceg/ND89AH/xAkLlEfJk0z2nPRfhyA9qoJL27IINxh8tTUqDVlatieZrKepAr6yxU
	sikAOXHDvYvJiHAZ5HUVDh3WBPv84mE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-355-M1g5pUNIN7OVt2poZYlaZw-1; Tue, 10 Mar 2020 13:19:56 -0400
X-MC-Unique: M1g5pUNIN7OVt2poZYlaZw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1BB28189D6C0;
	Tue, 10 Mar 2020 17:19:52 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D5B1F73874;
	Tue, 10 Mar 2020 17:19:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0702D18089C8;
	Tue, 10 Mar 2020 17:19:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02AHJlDI008991 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 10 Mar 2020 13:19:48 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id D381C2028DCB; Tue, 10 Mar 2020 17:19:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE0942028CD4
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 17:19:45 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A188B8BA52D
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 17:19:45 +0000 (UTC)
Received: from mail-yw1-f51.google.com (mail-yw1-f51.google.com
	[209.85.161.51]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-268-eJ46rQpKMnu-hCZHjw0JAg-1; Tue, 10 Mar 2020 13:19:43 -0400
X-MC-Unique: eJ46rQpKMnu-hCZHjw0JAg-1
Received: by mail-yw1-f51.google.com with SMTP id j186so14413775ywe.0
	for <blinux-list@redhat.com>; Tue, 10 Mar 2020 10:19:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:from:to:subject:date:mime-version
	:content-transfer-encoding:in-reply-to:references;
	bh=tUUxahF+iF3zlyD1M8+cx+bddFv6Q23DTHESwfni6eo=;
	b=Pc1yWpS+71EevjYl5T6bR5K+zcwKWrMOIheQE/XIPWhjUTw0wchOjdTAYt0qADFRmf
	/7RBc5j8kfwZX9EM5VYdxvSZxrZjnShtlJMJmgDC7DUVZsY0q/Ue1NnoXFphvOBYbWyA
	BfZuvkHBNpqqnWJCd7Xp6DMmWbgiN4qzls4e6ndTNchqbAfdZowXnW1zh0aQeb/h9P9m
	AsN7mjFHqLdgJpl0U3LQWSy5qiK0qv0C3lCQ7gYncmP/ODi3IqJ22xC4IZ6JgR5kB9+J
	OYYEdOwr7uMTxVVyxDskWA34Sg8CGZ/ZRCGfCvgsbNOAcMvNFC9oAJYZzcEfZaZIKCz7
	M5EQ==
X-Gm-Message-State: ANhLgQ1r7Ran1SU1kuhPdWXB7lCpP1v9UJsv8NoweS4KnwbtuiSX6YSh
	Yt4aVhmq7TAZ834hIgohaDdRF5w/
X-Google-Smtp-Source: ADFU+vt8KgAhxqyE4hrAfUn+0/eCK7QmyXTNOOhrFoNjB2T+MKlw4JeJKMtRsqrM9TiGTk5anW/d6w==
X-Received: by 2002:a25:dac9:: with SMTP id n192mr5869323ybf.285.1583860781970;
	Tue, 10 Mar 2020 10:19:41 -0700 (PDT)
Received: from [192.168.1.118] ([24.220.234.87])
	by smtp.gmail.com with ESMTPSA id
	x134sm18416285ywd.105.2020.03.10.10.19.40
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 10 Mar 2020 10:19:41 -0700 (PDT)
Message-ID: <20200310.171918.720.105@[192.168.1.118]>
To: blinux-list@redhat.com
Subject: Re: Dbus in choort environment
Date: Tue, 10 Mar 2020 12:19:18 -0500
MIME-Version: 1.0
In-Reply-To: <899C4D90DF2649B0AE394A2614B285C2@DESKTOPN6LG1HQ>
References: <899C4D90DF2649B0AE394A2614B285C2@DESKTOPN6LG1HQ>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02AHJlDI008991
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Fedora uses dbus-broker,  so that's why you're not getting results there.

----- Original Message -----
From: Linux for blind general discussion <blinux-list@redhat.com>
To: <Blinux-list@redhat.com>
Date: Tue, 10 Mar 2020 18:17:57 +0100
Subject: Dbus in choort environment

> I Am using Latest stable Arch Linux ARM64 on Android device. I Am running it
> on non rooted Android phone by using Termux, Proot and special Bash shell
> script to install ArchLinux to Android device.
> May be, that you will not believe that but I Am able to use many GTK apps
> including. Orca, Mate desktop environment, Gradio application when I have
> successfully build it and I have compiled it myself on ARM 64 platform.
> I AM controlling GTK apps by using VNC Android client app. But I have
> problems with Dbus.
> Some times, come app can not connect to The DBus socket. The file exist. And
> to be able to run mate-session, I must type.
> dbus-launch mate-session &
> dbus/launch is The crucial command to be able to use Orca and mate-session
> and other desktop environments.
> 
> Does somebody of you know how to setup Dbus so it would be correctly
> started?
> By The way. Fedora do not support dbus even while typing dbus-launch app
> name &
> It seems to me, that Arch Linux have some advantages while comparing it with
> Fedora.
> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
> 
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

