Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 68EE43E1E13
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 23:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628200003;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=trfGCIR/M/I/68fs8+9KnsPnrlggxO7ffttZ/F2vJ3g=;
	b=fPV4kYJP6oNugZU5CkHMP+eJMkjPym4xIRKQFATDO9cefz1a/1eW/QsBWM03D3RriROqSC
	6P3YkVpBT2XTzb6kvwyk9NC7j+R6WgVzec3Et/GrwXZcCkwoOeEnTXh8KcM8W+mwO7yrqc
	7PoOv5Q5yUY/05u3Bh5AvJzMReeJwvE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-Ab8ffPonPxy82bYxykmrtA-1; Thu, 05 Aug 2021 17:46:41 -0400
X-MC-Unique: Ab8ffPonPxy82bYxykmrtA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5A2991008061;
	Thu,  5 Aug 2021 21:46:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6136D60CA1;
	Thu,  5 Aug 2021 21:46:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3C43D180BAB2;
	Thu,  5 Aug 2021 21:46:36 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175Ldt3a002106 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 17:39:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 434F220B662C; Thu,  5 Aug 2021 21:39:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3D3D1202698A
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:39:50 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3208C80018D
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 21:39:50 +0000 (UTC)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-443-cJovt1GjOXKmfMZa7DXGQA-1; Thu, 05 Aug 2021 17:39:48 -0400
X-MC-Unique: cJovt1GjOXKmfMZa7DXGQA-1
Received: by mail-io1-f46.google.com with SMTP id 188so6920508ioa.8
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 14:39:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=8jbOyeHrq9FWWPQwqCZ5keJNAPRtF4brJCZMqzEq/x4=;
	b=ThW3HxQbFdqbzvNpM6R8zuD5lQg72bwTIN365YqoTdtxTnAGXVKAnm7DUnqDMs6FZJ
	/qYDufy/F0EHUUupULiFBDysayS3TILQPZrYx1EooWNfkkfli+kyJtKhkx5KRzGlnmeY
	6lJXRTDImicEmyHVUmPL4mBf/ANKnEOfZL2js2+vrgzUpwGeJJvhBtlgs69obYJfmhJb
	Ll01A3xvtnx/0b2uq6gwo/op5NY9iL/tQGAm44Dj+JkvZyFXMm/gW3hFbFirA1lS2FK0
	+0ELXQYquzx3TUUTPVrs2rgrIzglRO38giwa0/JgK+9wtIgHNMwGBTCq1rODqcx1FR7s
	77NA==
X-Gm-Message-State: AOAM531fwQfgxOwePnCnyZITbWKKbbsX/iVGk41E6+1+juM6DYcNwHB2
	MkSKdwQfF8jafOippuGy01I8N3MKdNeTpA==
X-Google-Smtp-Source: ABdhPJwx0fv2hO+D5/JVFhAzhfCIoqLQIUA6i2hln6+NuUg7E8OSxXVfuv8fPbrcLUZLfpeIGWsPIw==
X-Received: by 2002:a05:6602:2e11:: with SMTP id
	o17mr433819iow.55.1628199586910; 
	Thu, 05 Aug 2021 14:39:46 -0700 (PDT)
Received: from smtpclient.apple ([2600:1702:20f0:4420:51f0:217b:cddf:c3f6])
	by smtp.gmail.com with ESMTPSA id r6sm4280059ioh.27.2021.08.05.14.39.46
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Aug 2021 14:39:46 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: Solus DE observations
Date: Thu, 5 Aug 2021 17:39:45 -0400
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<09938f56-8ec8-a34b-65a3-9151aaab74b9@gmail.com>
	<EFCC025D-5C8B-4997-9BDC-D0243384A3D1@gmail.com>
	<alpine.NEB.2.23.451.2108041823280.8697@panix1.panix.com>
	<df6422c1-cf3e-2e3b-ffea-4afb43627a62@gmail.com>
	<229C49E8-4453-4759-A7DE-712BDD5AC3FD@gmail.com>
	<f1f450f1-b1ef-84d0-a4d1-c7515d21b8ef@gmail.com>
	<907EC549-F01A-4345-ABFE-67B06CF6949A@gmail.com>
	<eafbdb46-966c-9e16-ae75-08e15bad2dd3@gmail.com>
To: Blind Linux <blinux-list@redhat.com>
In-Reply-To: <eafbdb46-966c-9e16-ae75-08e15bad2dd3@gmail.com>
Message-Id: <57D4D4FF-D7FF-4CD9-9500-E011DCACABB0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175Ldt3a002106
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,  Got it to work this morning I was told there weree no updates so I guess I am good.  I think the latest version is 4.3 at least that is according to the image I got yesterday and installed.  When I first installed the system I did an update of 600 or so packages but have not seen anything since.  I am not expecting updates every day, but would be nice to have an idea of how often stable updates come out.  I am guessing that it would be at least once a week.

Matthew



> On Aug 5, 2021, at 4:49 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> sudo eopkg upgrade will update your system.  Eopkg has a manual page.
> 
> 
> 
> -- Dave --
> 
> 
> 
> 
> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> 
> On 8/4/21 9:05 PM, Linux for blind general discussion wrote:
>> So, how do you check for updates on the system using a terminal?  Sudo eopkg install package would install a package, but would something like sudo eopkg upgrade work or what?  I know you can go through software center, but would like to
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

