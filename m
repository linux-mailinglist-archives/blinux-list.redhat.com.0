Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E1547CAAC
	for <lists+blinux-list@lfdr.de>; Wed, 22 Dec 2021 02:18:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1640135890;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KTqnhTmvI1urZpbDf0R8B7saHDgyfk0Y3/hweyfGkkU=;
	b=VXim719ojg0+gvWfuZ5c8O1ARd/h7hMsFgNjc47rPSucekujuViWkYMpUIYEgJSXTfOXK5
	3iuVp097dyKmntYcLnenBB94kr1n3CM9Vh7CJ4Kk4EHNB1Pc2HX71AZXfmf5iabUmxC4ZY
	1PsXWPC9oWytIw4JEvb9EZZJuu+s228=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-441-FiNNY-M2P-aURxjnPK8vMA-1; Tue, 21 Dec 2021 20:18:07 -0500
X-MC-Unique: FiNNY-M2P-aURxjnPK8vMA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A3A36190A7A2;
	Wed, 22 Dec 2021 01:18:02 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9661E78A94;
	Wed, 22 Dec 2021 01:17:59 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0C7474BB7B;
	Wed, 22 Dec 2021 01:17:51 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BM1HgkY026754 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 21 Dec 2021 20:17:42 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 9679B4035788; Wed, 22 Dec 2021 01:17:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9252540D1B98
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 01:17:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 796E0101A52D
	for <blinux-list@redhat.com>; Wed, 22 Dec 2021 01:17:42 +0000 (UTC)
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-433-dx-CyRFaMWWnKf0vGfpFyQ-1; Tue, 21 Dec 2021 20:17:40 -0500
X-MC-Unique: dx-CyRFaMWWnKf0vGfpFyQ-1
Received: by mail-qk1-f172.google.com with SMTP id 131so855532qkk.2
	for <blinux-list@redhat.com>; Tue, 21 Dec 2021 17:17:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=kRB9hGNk0ZKCumpIi+Y1gqbJD6Q7G8oN8aScMdVkARA=;
	b=3I11cAFn55uXRrotrtZdMSXkJonJGazIQ5f9qj/clMBmDvRzRzHaMf6ogFt+GnnLmO
	anplikYF+nH02TUE1M6Yd1P7sMJCRxCsPNuY6HxZgFOKs9IWcgJnah0f2s9leoOW5XV9
	w3NvZYKqHoPOZBLt8PmDPfNkFIALSDVh4j53zV6hO4+EfoJ20BOPwwxsEgqjfK2R6Ln1
	7cgvmvbeqIvFu+oXWU8rLazqmQudwZSgyNm+jinpPl4ehN78IcLzqXZOKMupfvd73W8S
	YOnS3H/5szCnmM5vJSm140MmvGwcoE2pte+vZZ8FsISHPkVtKOsPscvb2HfOSLB/OBcf
	0Y3Q==
X-Gm-Message-State: AOAM533T9FoPhSlLbVKC8RMV5grEu0S6CFF8viQdjTwAqCcdq2NTi6y+
	Il8OQi1C9dmibstrDZEcFwXFnyaUyaQu6LX2Hi+BfmhW6jM=
X-Google-Smtp-Source: ABdhPJwbboI/uxz95trDDUvpuIIFmThNWEZrsbH6sgnLpy+E8ed1Vgo+4TspFuiuIRTt/PZ+8NSlmTJezSK+/RPvJJU=
X-Received: by 2002:a37:9e92:: with SMTP id h140mr661786qke.124.1640135860290; 
	Tue, 21 Dec 2021 17:17:40 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad4:5762:0:0:0:0:0 with HTTP; Tue, 21 Dec 2021 17:17:39
	-0800 (PST)
In-Reply-To: <1894fbcf-17b1-89f5-dea7-26cfbdfc723d@gmail.com>
References: <CAO2sX32o7d5EwMkWRVs4fQVjOFLkGmhNotbmO4+QGNkw4vAeCw@mail.gmail.com>
	<444374c1-a744-f908-a6cf-aae16d207cee@gmail.com>
	<1894fbcf-17b1-89f5-dea7-26cfbdfc723d@gmail.com>
Date: Wed, 22 Dec 2021 01:17:39 +0000
Message-ID: <CAO2sX30FZWQrtuZShkrpytrr2NhbB1n=mfUt=BH=o9hTDF4OLw@mail.gmail.com>
Subject: Re: Dealing with seemingly blank combo boxes.
To: blinux-list@redhat.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Okay, I've partially figured out these abnormal combo boxes.

When I jump to one with the c navigational hotkey, Orca announces
something like "combo box, opens menu".
Focusing the combo box does not read the current selection, whether
focus is achieved by tabbing or using orca+A to switch mode.
Pressing down arrow on the collapsed combo box expands it instead of
advancing to the next option.
Scrolling through the options does not read them.
tabbing off or escaping does not update the selection.
Pressing enter on a selection does not read it, but does change the
active selection.
Tabbing through the combobox after making a selection does not read
the selection.
Jumping to the combo box with c after making a selection does read the
selection.

So, the strategy seems to be:

Jump to the combo box with c.
Switch to focus mode and expand it.
Blindly scroll through the list of options.
Press enter on an option.
Tab off the combobox and switch to browse mode.
Jump to it with c to hear what was selected.
Repeat until the correct selection is selected.

Also, I can confirm the page in question is one of those that will not
even try to load anything and give you an error message if JavaScript
is turned off. Between that, past bad experience with JavaScript, and
how these combo boxes behave almost totally unlike how combo boxes
normally behave, I half expect this might be a case of a JavaScript
elements that's inferior, buggier version of a standard HTML element.

So, does this extra information provide any clues to what I'm dealing
with and how I might more efficiently manipulate these(I don't know
how many times I had to repeat the above trying to select the correct
state for inputting a shipping address, especially since North
Carolina was above Nevada andd other otther Ne states).

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

