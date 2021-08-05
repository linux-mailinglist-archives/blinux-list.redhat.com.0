Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6763E0BEC
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 03:02:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628125365;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=7/ilWU0aKhE/dziVuMr0zvbNWbjcD8x736kAHlVBigw=;
	b=OOQaYuuphrJJLnRzVXUAulr6p2hNd4OiA+pazEO19JZNhNPFz8aCfMpHEDKLZAre8piAj8
	lS/XXngwnrK2DjMH5W84JZ0YY6r5vTs5AD0qy8bOo3DFrEoqj3FCdmT/sY0kHMVKGyGqMZ
	G97hHsFAoQU+K/1xmpQvEP1UfGZlP7Q=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-140-R7vqx8HXNoSBvxtUflDQew-1; Wed, 04 Aug 2021 21:02:43 -0400
X-MC-Unique: R7vqx8HXNoSBvxtUflDQew-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 844AB80196C;
	Thu,  5 Aug 2021 01:02:39 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EFC5177701;
	Thu,  5 Aug 2021 01:02:37 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3FCB918095C2;
	Thu,  5 Aug 2021 01:02:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 17512Q5w029716 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 21:02:26 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2ECB61175400; Thu,  5 Aug 2021 01:02:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2A8CE11753EC
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:02:22 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B88E789C7DB
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:02:22 +0000 (UTC)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-326-XSWXXmzNPDyGKXvyyZzaUA-1; Wed, 04 Aug 2021 21:02:20 -0400
X-MC-Unique: XSWXXmzNPDyGKXvyyZzaUA-1
Received: by mail-ot1-f47.google.com with SMTP id
	e13-20020a056830200db02904f06fa2790cso3490062otp.1
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 18:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=sENZogY0677WtY2PJAwN7QJxN8i03sfUm3SUHZ9sUDA=;
	b=JXwtWi1Ubp+pvZSyaB4xIot7/q06yQ6tQV1hfJf/eFVIGclEnml3p47zRpTI0LuQP3
	MzZnhHj8zz/dNl1IMEB0QKn4YngzPkGYrJpfhEs/DO9/JtSACSUgjuUgiAY7RG5wrdaX
	R1xJtIs0hb7edJkq8MN7k1If4UnFmFwJzpnwlAg82xyw+6vVzSB0oR2p2i1dB4Fb3Tdn
	szdNQK0KBe9scYPFf6FMPqpNvXueJsaLI83ljiZtjzfZm37P0TLIZL2n1iSgNBuh60VS
	s/vtL1rEOPOlMGOIgcmpPQvvCpQazeYOMkG53GwpeAQfBJLpjywvqTfID3LxMLeosJNi
	j7bQ==
X-Gm-Message-State: AOAM532n60bjAddBiF4+Sfe/XL+UkB6nJGsAQBQT5bymHj2C33qvTK45
	a8tlz+Gcpa8z8O2uvHW1sUbifx0RYCs=
X-Google-Smtp-Source: ABdhPJw+4qMa3JxXwdJFW6BwHLAQh6Tr+haUuq7grMoPUFptmIQvlckGI1olBe0U1E/6TXCan8w4EA==
X-Received: by 2002:a05:6830:916:: with SMTP id
	v22mr1687944ott.264.1628125339714; 
	Wed, 04 Aug 2021 18:02:19 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id o26sm707713otk.77.2021.08.04.18.02.18
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 18:02:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 20:02:18 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
	<224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
Message-Id: <B9F8B793-E7C7-445B-91D4-27AE5BE5C394@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 17512Q5w029716
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

I will try that.
I have a think pad which was, until a couple days ago, a windows ten machine.
Now it is linux.

> On Aug 4, 2021, at 7:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> You could hit the power-off button, and it will ask what you want to do.
> 
> 
> --  Dave  --
> 
> 
> 
> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
> 
> On 8/4/21 7:52 PM, Linux for blind general discussion wrote:
>> A very basic question, how may I shutdown or restart a budgie system?
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

