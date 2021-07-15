Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id F28B73C9BD0
	for <lists+blinux-list@lfdr.de>; Thu, 15 Jul 2021 11:30:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1626341400;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=B7EfHZdCs4WW7DY/oz6fz1ry/J5cbX83yst765ifhxw=;
	b=HP95Lh3JReRDb1FftBuPYRco+b//ii6AOvk0XXgr1w6kjvpzaCsnEzJQLo5V/apfJzMDx4
	jgCBAF3/8ONdSPqmGvJTyfnQvhcCUwYQMl2GOmNoVPSqkw/HOEwgjQR1JpeJ7Vc+xahYk7
	QyzA8VNnsOcTZdIEoKBtrG6mZhClF68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-99-MRqNnuq5PRa9tSfdAUy-jA-1; Thu, 15 Jul 2021 05:29:58 -0400
X-MC-Unique: MRqNnuq5PRa9tSfdAUy-jA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DC565100CF6E;
	Thu, 15 Jul 2021 09:29:53 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4A9EB19CBA;
	Thu, 15 Jul 2021 09:29:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 22CD84EA2F;
	Thu, 15 Jul 2021 09:29:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16F9Tb9C007574 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 15 Jul 2021 05:29:37 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 642F520D69B5; Thu, 15 Jul 2021 09:29:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5FDFF20D69B6
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 09:29:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4769A18A01AE
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 09:29:37 +0000 (UTC)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com
	[209.85.128.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-552-R4PvQyoUMxaggFlnJeS5AA-1; Thu, 15 Jul 2021 05:29:35 -0400
X-MC-Unique: R4PvQyoUMxaggFlnJeS5AA-1
Received: by mail-wm1-f44.google.com with SMTP id
	a23-20020a05600c2257b0290236ec98bebaso724922wmm.1
	for <blinux-list@redhat.com>; Thu, 15 Jul 2021 02:29:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=dq5B9Qh8hXywwrgDdVcnsl3mLWBdEsNI8XnFyj20wLk=;
	b=Jl92XHQRDF129WkYSh0ilJ5bKrhUlDNoSWq8T2XRwKzYpFSDY6rXBwcyaLcutgW/En
	Cz78713UgF6d1YwNITMIRlvPow5SV4Qv13+r9CaCPDWG9zWWbE6fHX/zsN2ytNwL7Unl
	/863q6EtOsvq1VpPgTLkH2Vaw8voqDy1/dsOyYT+mqduDH2KXutPdTliNvWy1eLWBrS8
	vD1uPMFNyDaz0qu2e/u1/Wwg32L4SgRPLuj1RcI6vMs+KWVZVeMFJejq2a5FEKCjw1g9
	mZJk7XCtRdmjmIu5AMh92Y0tufeiSqoTcTa1ueQPqWXAN6qh22qkhGKfeTxwrMLuydZX
	h/Vw==
X-Gm-Message-State: AOAM533vRveHp8ZzG/pRWb7WB21djzQeCJ42SZsIXeuJ2AWGR2UXq309
	2mCAnz3sz6BvU9f2QkCmvsb3gPViuW8=
X-Google-Smtp-Source: ABdhPJyiG+JF6GwfGg5hsPGUliPMYrCkMMtHZ9+HlGkRjw0oXw9JbgZ9au22WZVxVoHobK5uvOthoQ==
X-Received: by 2002:a7b:cf29:: with SMTP id m9mr3407195wmg.13.1626341373542;
	Thu, 15 Jul 2021 02:29:33 -0700 (PDT)
Received: from [192.168.1.130] ([90.254.192.41])
	by smtp.gmail.com with ESMTPSA id
	j23sm1294681wmo.26.2021.07.15.02.29.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 15 Jul 2021 02:29:32 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: VScode not accessible?
Message-ID: <4c94df7a-b105-d608-35eb-ff3c05943866@gmail.com>
Date: Thu, 15 Jul 2021 10:29:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

As it says...trying ot find a good code editor for Ruby on Ubuntu 20.04

So, I figured alright, let's give VSCode a shot. Nope. The editor is 
currrently inaccessible message, so....

Is there a good alternative or did I get the wrong version by snap 
installing it?

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

