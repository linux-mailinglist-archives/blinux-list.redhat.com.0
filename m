Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	by mail.lfdr.de (Postfix) with ESMTP id 077281851C6
	for <lists+blinux-list@lfdr.de>; Fri, 13 Mar 2020 23:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584139681;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=tRHeaDziUgFO5ml0pgvdZ7uW+kSwxOtmZPfckSD5fEQ=;
	b=KI6w7417c00AoKgctNGU/dFSHNwRj5yulj+4nL5HjN5ChT3xr6KIN/LuoeQInpsf13J+fi
	CW6PuaM3JsLrE+LtKywBjuddihybaY2UlB90/qQchRUEFfLqbvcgPY3GXvN+cyCgEt+di9
	xsD08ZJGO0O43YdEtZewxArRdy+bP4k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-482-uoHrVC7-NIWXQPrd03e5Kw-1; Fri, 13 Mar 2020 18:48:00 -0400
X-MC-Unique: uoHrVC7-NIWXQPrd03e5Kw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B16C800D4E;
	Fri, 13 Mar 2020 22:47:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5AE661001B0B;
	Fri, 13 Mar 2020 22:47:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3A39818034EA;
	Fri, 13 Mar 2020 22:47:45 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02DMlavG020643 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 13 Mar 2020 18:47:36 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id A86F110073A5; Fri, 13 Mar 2020 22:47:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A3CD6101A81B
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 22:47:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DEFB9101A55D
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 22:47:33 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-155-0hI6-jfhPUO3aJFlRBN4og-1; Fri, 13 Mar 2020 18:47:31 -0400
X-MC-Unique: 0hI6-jfhPUO3aJFlRBN4og-1
Received: by mail-oi1-f182.google.com with SMTP id 13so2266988oiy.9
	for <blinux-list@redhat.com>; Fri, 13 Mar 2020 15:47:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=HVywUbxFqU8OmCzyWnWF0ktkTODwQQLom5rTAicL0k4=;
	b=fKOChoO21VkWVE2hxJ/jKq5QtTCF6yZtearq77CwpX6xegy55bkV+fclsec6OTtN6P
	C8WiIYcKRyeauk8zWqvHO1dRsvtOEeV/MfnC+hsvM7UrOtHvKtMKkxAee0Wnz01inwOw
	Y8XkwxTQH5y6iEkg1SOzosiRHH7HJNzG1/Cd6a+M9BDPKQtkxo254Ogci2MyVLWjOSol
	BCd/bCGKcEJD+FIyaX6lPe4fj+i5CQTMpMsvS9NYPMeLEsdSXYteYBNq8ESSpk4a/HiP
	hFqh/vkP5p0427x/9GU2+I8SW5ljx4rv0xnlYgYQgxfNo4RWLHwkK4B54T2C0lnBMF6f
	49qg==
X-Gm-Message-State: ANhLgQ2+Www7qw73L+9s2P+Dd3uehMOc2PE01W4eXEWfX4oGo2k28jvW
	krtJZERoiR+2q0p1b6kAWr/D8TyUzq9WmW7DsJPYUg==
X-Google-Smtp-Source: ADFU+vsQ92AaazWqPQhBkqCAWtNz2A9jfFz7blTO4bFMUScCsy2cOyYFNDBaSJ3qdyodz5PrWC9lOrt1GJTFS40AT40=
X-Received: by 2002:a54:408d:: with SMTP id i13mr2439676oii.42.1584139650491; 
	Fri, 13 Mar 2020 15:47:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6830:201a:0:0:0:0 with HTTP; Fri, 13 Mar 2020 15:47:30
	-0700 (PDT)
In-Reply-To: <alpine.NEB.2.21.2003131703140.22616@panix1.panix.com>
References: <6b72c0c6-6a71-e688-4448-789876e33a34@slint.fr>
	<4d35e0f7-1bed-49f3-9f07-ba0129d66dcc@localhost>
	<000a01d5f93d$6af79770$40e6c650$@yandex.com>
	<Pine.LNX.4.64.2003131317210.19101@server2.shellworld.net>
	<alpine.NEB.2.21.2003131343530.23185@panix1.panix.com>
	<Pine.LNX.4.64.2003131351530.20106@server2.shellworld.net>
	<alpine.NEB.2.21.2003131703140.22616@panix1.panix.com>
Date: Fri, 13 Mar 2020 22:47:30 +0000
Message-ID: <CAO2sX31Sa19X0veKtYzxtK5hAJvsSpfMAxk1quyC8gyJ8WaMHw@mail.gmail.com>
Subject: Re: Stormux is born.
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02DMlavG020643
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Just because someone who might use Stormux already has a combination
of technologies that allows them to stumble upon social media
promotion for Stormux doesn't necessarily mean there couldn't be other
tasks their setup makes difficult or impossible... even being able to
access said social media promotion is no guarantee that said access
comes easily to them.


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

