Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB6949F045
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643331648;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gF/qjGqFYCjjyPVIQmfgFGeio4ZGdp860HqB8Klz6Yw=;
	b=NlUsEf/9exiYYYBKsA94b4joYxHChw64/NI8TybhjFXqWKUc9rJ4u/vT+b6pHplkgGppK5
	VJABHBdHqEYHYtURFwpD6E9yV1799ji9w42XQN4iFacAKGlENKd3j3OkwByGMiKQ+IpF3T
	B1474/fuxdTpcvcqrHzF3RPauhwnRvs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-488-dgyYmTs0NJKcn3heKmKiKg-1; Thu, 27 Jan 2022 20:00:45 -0500
X-MC-Unique: dgyYmTs0NJKcn3heKmKiKg-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5F3318143EA;
	Fri, 28 Jan 2022 01:00:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 43EC810013C1;
	Fri, 28 Jan 2022 01:00:41 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EAFC71809CB8;
	Fri, 28 Jan 2022 01:00:40 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S10bwT028484 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:00:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id AEBCC2024CB6; Fri, 28 Jan 2022 01:00:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AA4292024CAE
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:00:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A6E9E811E76
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:00:34 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
	[209.85.160.169]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-653-_rikiEwIO-yjqrBG6VZPnQ-1; Thu, 27 Jan 2022 20:00:32 -0500
X-MC-Unique: _rikiEwIO-yjqrBG6VZPnQ-1
Received: by mail-qt1-f169.google.com with SMTP id g12so3962396qto.13
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 17:00:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=/ESmMJBCWZcaWb9I9Er9MQNb7dt3p5FL+A6UKSuRFjI=;
	b=m/evxzBw5Bom8SQ2gslXn5HaBOHTKYfyOLZD9oC/Enx20ZgNo0Q8rW917dzwKMUtpE
	7/P+aba5WHC6rPNrppQswlheJLYgybhEwZxzrM5GHMBmqTq3mClpt1QrhTNBxG9XDwtU
	pX/UPfks259T7fcM11rAn/FzVJDOcKlTKSjzFKOBWxB2OQ7VRIh6Oqh0kBxWdonwrokX
	ByMS00AokZFYtgk0meRg57l1muAoJ05VZF0MdSIHQwfpElfyF7LxkXOzu7inUJj50CUF
	H4FLY/rTPxkO1kRD26/pN3ac5FKJ6tV1orEXyKyvdh+iraAA0QDSVT1jYJg0B4IdmHbE
	5yuA==
X-Gm-Message-State: AOAM530hiTffNno71Oma2xXm/7F2pfLQT9HyQF2jlDGfRDrh3FKbudUR
	jEtfbq4saqeoSh5/iCrKSyWyBlldqxeAMw==
X-Google-Smtp-Source: ABdhPJxnB3myVef5RocNNl69WgTgkRGp1Eb1lWbtFhSyndafBZ93r8nuEMMlMANnNrxZ0FN5pBsCUA==
X-Received: by 2002:ac8:5fcf:: with SMTP id k15mr4708525qta.244.1643331632311; 
	Thu, 27 Jan 2022 17:00:32 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	t11sm2224677qkm.77.2022.01.27.17.00.31 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 Jan 2022 17:00:32 -0800 (PST)
Message-ID: <84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
Date: Thu, 27 Jan 2022 20:00:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
In-Reply-To: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I have been told that Fedora 35 has sound issues in virtual machines. It 
appears it always works on bare metal, but virtual machines get no sound 
in 35, and 34 sounds pretty choppy. As far as I am aware, Fedora is the 
only Linux distribution using Pipewire along with Wireplumber by 
default, which could somehow be causing problems in virtual machines. I 
tried these here on an already running Fedora system and got similar 
results, but only in virtual machines, so I can verify that this is a 
problem, at least with Qemu.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

