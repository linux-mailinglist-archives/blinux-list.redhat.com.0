Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FA846457E
	for <lists+blinux-list@lfdr.de>; Wed,  1 Dec 2021 04:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638329803;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=TssgLoGffwrxwLlxNUzS1/5vnHhlEawTadvujZp8QgM=;
	b=LkFrAGB/0KskJaBHhNsUERbIUCHVnuPEZeUcdUfL2/8e0/a0AtlQ2O6IrQkg5lgz5Ir5HZ
	Yi50YOZsGlyJTS7kPoHItdoJo544LYszMvk1TwT9oaCsG37kzhbawwACLfOwFx8jV4Red6
	s2AwVke/PT/i+g3vIWkP3oQB4IDLdcU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-326-3ezNaiDqMiiBvKjtilfF0A-1; Tue, 30 Nov 2021 22:36:38 -0500
X-MC-Unique: 3ezNaiDqMiiBvKjtilfF0A-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9F83F835E20;
	Wed,  1 Dec 2021 03:36:32 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CC4E45D6F;
	Wed,  1 Dec 2021 03:36:29 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7C5414BB7C;
	Wed,  1 Dec 2021 03:36:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B13aAns003086 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Nov 2021 22:36:10 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 80AF751E1; Wed,  1 Dec 2021 03:36:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7B18251DC
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 03:36:07 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE00785A5B5
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 03:36:07 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
	[209.85.219.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-248--E5mUzbENjGfY7ofngc8UQ-1; Tue, 30 Nov 2021 22:36:05 -0500
X-MC-Unique: -E5mUzbENjGfY7ofngc8UQ-1
Received: by mail-qv1-f44.google.com with SMTP id u16so20254423qvk.4
	for <blinux-list@redhat.com>; Tue, 30 Nov 2021 19:36:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=WNfOAQqQVj1ZgF/noXg+XBbI8YiWDDLNo+9HdjF8fJ8=;
	b=TokHb6MNnhsvZo1BmS3iF0yI1V2AXrPirQl3frsVZKfnCzhcgMXZt4ZnzbKHTNWDLa
	FXfJ83rLLk8mYb0RU01pK5VK8t7uHZl9e5OuM2Xrdr3QDVqxhu0owO5CAKpKuWnhBTe2
	C1VWkev8paLYzVrnMamZPKjq1YYPtTve6JZT5j1lyqfae2OYCyjI/2KRjGmSC/GzOQkg
	3WypLaj9mnV3fndm5f1MctNCbumyfT3bhc1ktcCPqRLE9nxcxL5KuaLUPWWAV//svGQH
	VegEziD7g+cM8oI4PnFRctUwmb7Nei8sBFFlOstLyeep4UL5kYmBsPgzOwUUsQ5dtYCk
	lNWQ==
X-Gm-Message-State: AOAM530OSv3IyC3lRMSpY27yWSyzDsyNQiXTnQMdcTC5Ss+cJC+NND8a
	RuHmO+O2LQzQ5P6yi4DdjJVIYCHj4yXGla/4
X-Google-Smtp-Source: ABdhPJxnEy0UNWUmnP9NsAvBgWWlMegpX5DDpVQTsV7znYud7FKagG6eUKEX2NEp+UbwhsKTGrEn9w==
X-Received: by 2002:ad4:58cf:: with SMTP id dh15mr3498785qvb.125.1638329765079;
	Tue, 30 Nov 2021 19:36:05 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330:6a07:15ff:fe1b:961c])
	by smtp.gmail.com with ESMTPSA id s4sm8897455qko.47.2021.11.30.19.36.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 30 Nov 2021 19:36:04 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Is it easy to install Voxin voices on Slint?
Message-ID: <409d4ea5-c08f-9975-adcc-5d7bafc6ba44@gmail.com>
Date: Tue, 30 Nov 2021 22:36:03 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi Friends,

How easy is it for a Linux beginner to install and customize the Voxin 
voices from Oralux.org to work smoothly with orca? I am tempted to buy 
two of them, but I am afraid to find the installation to be too 
complicated. I could not see any installation instructions on their 
website. I assume they would send instructions in an email after purchase.

Is the Voxin addon very stable? I could not really judge the quality 
because the samples they give are ultra extremely short, less than six 
seconds. Each voice just says its name. This is not enough to judge how 
it would be in reading pages or even books.

Anyway, If any of you had tried the Voxin voices, please let me know 
about the difficulties I may encounter if I try to install them, and any 
other comments.

Cheers,

Ibrahim

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

