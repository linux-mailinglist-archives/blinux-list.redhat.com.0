Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 8C3AA3E0C10
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 03:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628126664;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=LKBnLk+QKSxJCFnG9AKCzpKvGip2U2VYHdE9GKTcImk=;
	b=TZlgS+frbkYnhozO4xHNvthieWKJrhrV6tr2KHjOxdEhEiya8YSDEw7Shas8fAq8rOeLyD
	q+syze3UqsCisVoyZGkP+YrF0HROU7KnJn2YEuSiJ6WVmI1JO48Xvy+DX8D7cTiwkecMK/
	LIZpoYIXW9ShrSopcSCdflToJZeRMIY=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-372-wHhVx-WLNmqAI_qqudiBzQ-1; Wed, 04 Aug 2021 21:24:23 -0400
X-MC-Unique: wHhVx-WLNmqAI_qqudiBzQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 7B55887D541;
	Thu,  5 Aug 2021 01:24:19 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3539F60C9F;
	Thu,  5 Aug 2021 01:24:17 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 78ED44BB7C;
	Thu,  5 Aug 2021 01:24:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1751MbIV032045 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 4 Aug 2021 21:22:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id B818D208BDD4; Thu,  5 Aug 2021 01:22:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B3693208BDD2
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:22:32 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 363CB8556F4
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 01:22:32 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
	[209.85.167.170]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-480-VRkDFTslPTu5kH5LLv294A-1; Wed, 04 Aug 2021 21:22:30 -0400
X-MC-Unique: VRkDFTslPTu5kH5LLv294A-1
Received: by mail-oi1-f170.google.com with SMTP id x15so5215185oic.9
	for <blinux-list@redhat.com>; Wed, 04 Aug 2021 18:22:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=8Y/weJUn2kHiar+AvnEUSw40cnpWg8NiQXBKBhNex1s=;
	b=AB+zmtFrna/5BFLwP04ZGxZCs3I+dQRSi+8pvYWxmO6ms+AlPZNlrnWq9rP/46o/ba
	wf4Ip1OuuSrl27dNUvoCOBqDZhgb6GkkA2l7HTTNzUwgu5toIGKUbJvrSVDjxAa5TejP
	FCEx6NG02h7RjuLh+HZPHnd7o/wWDH4rpQzPIHfszErJDpDMKSxowDwOtFCjAMl2WgHZ
	z9FmtCQSxemMN+ApT55h6MVv6Rxi7myc/Wxezjdqedd6y1lrngc2PSlw0q5GY4HmaJ3f
	2SIpckkzkAQfj1pKRJWa5g6ZFeaGjtd8J3Vk7GdxsLa2TzQyWqLZ6m0BJnhGGMk9nuza
	7TfQ==
X-Gm-Message-State: AOAM533EVjiVInVB6oVZuecnNLBLCUqF8+/O7nev8wMpfEKiZvEwHyeH
	15XRg2wdNvBXeFEfLas3K/j+vFjKHxQ=
X-Google-Smtp-Source: ABdhPJzSDSSZhT8WeuiyxCZxacCAvqHtH6oFsiGRhHF0gWDvynocH4cUNSeVKp/M4K3Ml3x3wavWiA==
X-Received: by 2002:a54:470c:: with SMTP id k12mr2604426oik.126.1628126549368; 
	Wed, 04 Aug 2021 18:22:29 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:45c9:39c8:e5af:5000])
	by smtp.gmail.com with ESMTPSA id i188sm797125oih.7.2021.08.04.18.22.28
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Aug 2021 18:22:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Wed, 4 Aug 2021 20:22:27 -0500
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
Message-Id: <EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1751MbIV032045
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

I shut down by going in to terminal, and typed
reboot
and that did it.
I am sure budgie has some key shortcut for shutting down.

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

