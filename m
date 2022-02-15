Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 888464B74E1
	for <lists+blinux-list@lfdr.de>; Tue, 15 Feb 2022 20:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644955035;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1Ot3Aewp1AqvwRO1LBKIh4HqulkKdDx3TDwOS6lugYI=;
	b=ZxCnzaiOJXdewZkGSLJNBbkQLLWytPWmcf4U1qWfDTRHZkUr9ocepyJ3WPW7JOf3Uo7Tij
	g3X7SKZyAheyD5R9htqn76/snFcCQRsks0hIyoodvXFxATrJOpW6sotBDMVn8z/XuUPWvv
	6m6njllrdg9NHYk5AN1lJ8YsXbe+sI4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-599-toz2VZuYML22Dzm-qyfxGQ-1; Tue, 15 Feb 2022 14:57:11 -0500
X-MC-Unique: toz2VZuYML22Dzm-qyfxGQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EEB7E2F46;
	Tue, 15 Feb 2022 19:57:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2ABCC1017E37;
	Tue, 15 Feb 2022 19:57:06 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BF5011809CB9;
	Tue, 15 Feb 2022 19:57:05 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21FJv2Tj003055 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 15 Feb 2022 14:57:02 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 440B81121332; Tue, 15 Feb 2022 19:57:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D0D2112132D
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:56:58 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B868A3804508
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 19:56:54 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
	[209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-57-nP8lyNu6N3-Tozmg9no-yQ-1; Tue, 15 Feb 2022 14:56:52 -0500
X-MC-Unique: nP8lyNu6N3-Tozmg9no-yQ-1
Received: by mail-wr1-f47.google.com with SMTP id q7so33822684wrc.13
	for <blinux-list@redhat.com>; Tue, 15 Feb 2022 11:56:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:from:mime-version:subject:date:references:to
	:in-reply-to:message-id;
	bh=gTIpvdR8wYue0vL6gknDL1ZEiwZQ6T+FYbUHB3Y+w/I=;
	b=a7eC+prXth5Cv/zo/N1O8p2nLoFGyOQS51TO/NbwzwXh8HA7qyIAUziTGgjB8CfBTV
	321mZ5AxbtWNcP/g6Rv4ksH7onCSuMTvDa/AAdGrLVfHdjkKRlNsedm5nvtU4pIebKOu
	cO8S6bUFU4n3dR9RBSLdnXUUQ1kVYI6rx1WSUavSIIqxtj7pf43duSVWI+W3YZcJ/n7i
	hbD7B/G/OVgOB42TnpxbJQHMH4534fnjcp9RlEg238P0LRQtggHhhG6UBMvwCFRmGo7X
	5fdBIYA75OqH6qd7qSW26Z2d0KvaGqTstO3edLdqxQYuqXeSPvaeiJI1vlGZ+4CYE53c
	WpQg==
X-Gm-Message-State: AOAM531ZQehC1O/KJSpip2f+pi8JQ0u1GfFrYMn5s+Z+38JDjJD1yFLw
	bFTQymllpDpnbQMTVf/MuYE91mBmvbluBw==
X-Google-Smtp-Source: ABdhPJwCzX2fR0jEAvxP8VN74CDGwY9+FaXF9XeA/zVHx6UgE/l9d5jb+bPPC3O2c2RMBzakMPwqjA==
X-Received: by 2002:a5d:6d8d:: with SMTP id l13mr442542wrs.83.1644955010281;
	Tue, 15 Feb 2022 11:56:50 -0800 (PST)
Received: from smtpclient.apple ([197.184.177.21])
	by smtp.gmail.com with ESMTPSA id
	s6sm13716013wmr.43.2022.02.15.11.56.49 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Feb 2022 11:56:49 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.40.0.1.81\))
Subject: Re: Accessibility of installing Distros?
Date: Tue, 15 Feb 2022 21:56:46 +0200
References: <4ced451-6f9c-3d8c-3a80-ce15147d9f2b@brandt-slint.local>
	<f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <f756ee8f-b545-705f-63c2-8bbb0eb1366c@gmail.com>
Message-Id: <B3A425BD-7A5D-4FA5-BB1D-9EEC8BC0C18D@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
X-Content-Filtered-By: Mailman/MimeDel 2.1.12
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

Ubuntu, as far as I know disqualified themselves, seeing that you cannot, as far as I know install 21.10 without help. Yes, the LTS version's installer is still perfectly fine, so you could technically count that and distros based on the LTS.

For how long, I really cannot say.

Warm regards,

Brandt Steenkamp

Sent from my MacBook Air

Contact:

Phone: +27 (0)60 525 9181 <tel://+27605259181>

Email: brandt.steenkamp@gmail.com <mailto:brandt.steenkamp@gmail.com>

Twitter: @brandtsteenkamp <http://www.twitter.com/brandtsteenkamp>




> On 15 Feb 2022, at 21:50, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> There's Fedora, Solus, Debian, Slint, Arch, that I can think of so far, excluding Ubuntu and spins.
> 
> On 2/15/22 14:47, Linux for blind general discussion wrote:
>> What other options do we, the Blind Linux users have? And, no, I really don't count Ubuntu spins, (Mint, Trisquel, PopOS, Accessible Coconut, etc.)
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

