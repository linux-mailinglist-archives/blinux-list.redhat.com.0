Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C155E3DFFE7
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 13:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628075153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=0QjLIdzxK6eXwGDj3pybu3zd1Imud735hzb4esxwc7w=;
	b=iWUu4QQAb4neDtOlo3l3IbMLkt3PQprBi1DjU/6UwvfpguhtSL75mvQsQTJQ59hDTlNA4m
	7VnnwQXyMIeTBBgZsnkKfLaBKM011K5IqrHubIRvJvzTyNuLMjJusjRDDmPRjuYigOTE7a
	TAuX4TP6W7eFXOe4lGUOCAKtzfNeXLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-591-4ukpMV9hOlu2lv_QV6svrg-1; Wed, 04 Aug 2021 07:05:52 -0400
X-MC-Unique: 4ukpMV9hOlu2lv_QV6svrg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 68092A0C02;
	Wed,  4 Aug 2021 11:05:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A0BE410372C2;
	Wed,  4 Aug 2021 11:05:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D45CC4BB7B;
	Wed,  4 Aug 2021 11:05:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 174B5TD7015511 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 07:05:29 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 3BD0A2157F47; Wed,  4 Aug 2021 11:05:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 361572124219
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 11:05:26 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 627E3800883
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 11:05:26 +0000 (UTC)
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com
	[209.85.167.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-568-O11JMxRQMFCOQ6OUc4yGaA-1; Wed, 04 Aug 2021 07:05:24 -0400
X-MC-Unique: O11JMxRQMFCOQ6OUc4yGaA-1
Received: by mail-oi1-f179.google.com with SMTP id a19so2399155oiw.6
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 04:05:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=fj7A4d3R5Dy5zX2aATf7+0eD00ZGxsuKLUvd9uqE7BA=;
	b=HoB3letYJcVZ365NX9lRlGxUId3//g6AJsDXl+5BU9a8ww0eqcFN6RhGYxuB6YFbfO
	qem9YNjZ69ryNegiPyfS5EtXwfuipvD2O7X8lYKeqCurxjwhA7i+OBUD6uzDcGx963iq
	ZlXVx0CKUB96xQrXdEkO7Uo7or4SVmL7fHY0oipP01SJm1/LUbziSRILLJkFJED3FS/c
	jZ0tfRJRo7X1X5UuNouxhCyuCDj9px3MDUSznPz/jMdfSykEanY2c2h4SswR6qy7ucOS
	3+PeHAorl4WEuKu3ZOSDI1H2MvR/eFUtSEzZQZYbCvtEQaLMnxHbZ9THZlEpfWcK9cp7
	/l3w==
X-Gm-Message-State: AOAM53309E10tgD16MwicMNKdCA2ZrSDBPX3tVFGCx6rx0OH2AO41R+M
	IOkmsGOya1+2beA6qrAcno7yeAefjKw=
X-Google-Smtp-Source: ABdhPJwV5yRpB/BgU+ZqvAGXxIwvxIZtvmZdj35cUl+RAIXH5myiogiMJfrZpZk4X9Q7nZ0g9WFkOg==
X-Received: by 2002:a54:4190:: with SMTP id 16mr6440995oiy.16.1628075123382;
	Wed, 04 Aug 2021 04:05:23 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id p2sm397217oip.35.2021.08.04.04.05.22
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 04:05:22 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 06:05:21 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
Message-Id: <229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 174B5TD7015511
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

How was linux mint and orca during installing?

> On Aug 3, 2021, at 9:23 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> This message is coming from my Solus Mate installation.  Mate and the applications work as expected, with the exception of speech dispatcher.  All other audio sounds fine, but speech is a little choppy.  Also, I found that some packages aren't in the repos, namely LIOS and Chirp.  I don't know what the build experience is like in Solus, and have those packages in my Slint system. Speaking of Slint, have you considered it?
> 
> 
> I have used Linux Mint Mate edition, and find that the accessibility works fine in the apps and on the desktop and menus.  I find that I have to use flat review on Mint Mate's bottom panel, and the battery  charge indicator doesn't seem to refresh properly.
> 
> 
> 
> HTH,
> 
> 
> 
> Dave  H.
> 
> 
> 
> 
> Sent with Thunderbird and Solus GNU/Linux.
> 
> On 8/3/21 10:13 PM, Linux for blind general discussion wrote:
>> Dave, I have used gnome and mate with ubuntu.
>> I thought of linux mint, and tried it, but orca would not work.
>> Had you tried mint?
>> As to Solus, is that workable?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

