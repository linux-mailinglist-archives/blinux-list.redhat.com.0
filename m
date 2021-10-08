Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CFD8A4260D8
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633651389;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=w2kFAdeAfOvEHFCZYaQb6UHoxCC8nJX1dAfX1ELkzhs=;
	b=H96wMARAmSpRAe8l/8/8QtngcTBEvsjLwGL4pirFQHYMIOFKndJnON0sRI0IeWA5J7Up7i
	6ohrzMGfKhbxuZWZy+JFTcS9fmQGlkapqLjqmit8xwr438dC0FP8gL+7VOmPsl4hQec0cc
	Cp/S+NVxuH6j2lBHOSKydtz/FqjCFL4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-411-ofWjjYZWPW2sgHQau128Bg-1; Thu, 07 Oct 2021 20:03:07 -0400
X-MC-Unique: ofWjjYZWPW2sgHQau128Bg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DFD7C8BB3EF;
	Fri,  8 Oct 2021 00:02:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B87C760C13;
	Fri,  8 Oct 2021 00:02:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 40F221800B8B;
	Fri,  8 Oct 2021 00:02:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 19802HfB024897 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:02:17 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id BAD052157F23; Fri,  8 Oct 2021 00:02:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B55E32157F22
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:02:17 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C4568007B1
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:02:17 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-29-Y7So9EwUPFG2vMP-VNAiIA-1; Thu, 07 Oct 2021 20:02:16 -0400
X-MC-Unique: Y7So9EwUPFG2vMP-VNAiIA-1
Received: by mail-qk1-f179.google.com with SMTP id z40so6401449qko.7
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:02:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=1SI8oeymwHs6xzQtEssJZuR6hJbVecu7kRw56liuVBU=;
	b=QCJbuyM2Ql6qEPVgFsSYTyjNMuK5JnibMCrURkbavInFufYzHC+RC1V2JURBido+Lq
	2mXdU/1IiFSBANigqeYn5b75lUB4GIhGH/wPXn8RQ9E4vlFy71gpXQHgewJw3Kcaeizs
	Z5YydIdJSAUjW+9LLODo1bvMJRixUMSgs53q8s32EEMZnAxT6Jt70k2e/hYFL0wZdDa5
	/zeab9bAvSYlYfNHkcmuqBw3kdLPkDGiiA1/Nrslz0yFI938ME17YQsihhssHcYq7MKP
	XvpWOYYMpTXcV95JkrB0zhPuVHjPnLRb9eAmNm4gNbSAFftqA9Gi5qAKaosEXIblHqP3
	e91g==
X-Gm-Message-State: AOAM530hRsaLHjcNyFBspW7+TRiZ+wEOVKP3S6Jby+U6D0ls7ifEXDcN
	kuGDGL0a5dQhqyKYkbCZzgtwOrnZOL20ZQ==
X-Google-Smtp-Source: ABdhPJwWbZNJfMA6q3aj2wgnTeaY6TK+uyDByXEOKD/+oa5Dus3LrDQ6kfChKt1gWg8OmArk1rKOfg==
X-Received: by 2002:a37:8387:: with SMTP id f129mr266982qkd.79.1633651334739; 
	Thu, 07 Oct 2021 17:02:14 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9f4f:c8b4:2dce:36f7?
	([2601:192:4c80:1420:9f4f:c8b4:2dce:36f7])
	by smtp.gmail.com with ESMTPSA id c30sm762603qtg.50.2021.10.07.17.02.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:02:14 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<7858163b-dcd0-ae6f-de2a-513ae0fa2aa0@gmail.com>
	<df213663-47cd-687a-e54b-19e457208edc@gmail.com>
	<6CF0700E-28AB-4788-9209-BD321235912F@gmail.com>
Message-ID: <2f300afb-ede8-0c59-ba3b-982d55f0cdf7@gmail.com>
Date: Thu, 7 Oct 2021 20:02:13 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <6CF0700E-28AB-4788-9209-BD321235912F@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

https://linuxmint.com



On 10/7/21 7:57 PM, Linux for blind general discussion wrote:
> Would one go to www.mintlinux.com to get that?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

