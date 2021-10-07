Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id B3FD7425DAD
	for <lists+blinux-list@lfdr.de>; Thu,  7 Oct 2021 22:36:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633638986;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=1zF1+cOGoqUaryxhUP8dL+GcvTPN/CyQqBPTz8zRUBE=;
	b=eo0YkDpae7IGp5jEJmLLXaxJYagzGl/C/f13wiC3NdEiBaR1vVEP5DC93DMbov/t+tYaGF
	yDCEKRTr+evMXUjA4XuvQerP4HAsRX3Nrc3senUlmw84oSjLeJS5Jp7lcjnrg+Cw2oMbH7
	9Sfnu5vbT344PWcDOdJknDPXDJLHAP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-8quu7dQqMFadZ8xnwSF9hA-1; Thu, 07 Oct 2021 16:36:25 -0400
X-MC-Unique: 8quu7dQqMFadZ8xnwSF9hA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7D3E8DB64E;
	Thu,  7 Oct 2021 20:24:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 14372674C7;
	Thu,  7 Oct 2021 20:24:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6B35D180598A;
	Thu,  7 Oct 2021 20:24:42 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 197JutOS001900 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 15:56:55 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 40E622166B1A; Thu,  7 Oct 2021 19:56:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 214852166B1E
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 19:56:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED5CB802E5C
	for <blinux-list@redhat.com>; Thu,  7 Oct 2021 19:56:36 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-361-m3C5Aob0O4qMOJMTZYdqJQ-1; Thu, 07 Oct 2021 15:56:35 -0400
X-MC-Unique: m3C5Aob0O4qMOJMTZYdqJQ-1
Received: by mail-qk1-f174.google.com with SMTP id z40so5802929qko.7
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 12:56:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=nY6wzqxyuRqsOOCDMIFW3J5ucUAWG6DoRMyJaSm+7SM=;
	b=kZzw7aL6uqcTnr4HQTBEqegnPFkxVSn0ELgWEKLnS2fQMJWcBTwrbfhAZJO+uuFRs7
	mIGkGsOsNlxmH5f29UuOpcrQDGTCACjR3GZ67ZElILuXIYc/WDz/Yum0OORq/TdwIzxn
	eZhwY7qJxqHBKexYe9elGiNFyLkHoCZ+OMdGs7HxpEgqPh7WVhfr1HD4NQy12ymbzGr5
	ChAZoVsGwUN3YpbZ29fmOYtAy4lHEnpVRKv4e8P6an0bh5idiqgRU0XHpnTorKxflapL
	4Mnvp+YCmO01uFzG0/D9Qo8fjrNJ6LjI13r4MzamJOOMZl2E77peTs5Mb/QqeYW29hXv
	SEPA==
X-Gm-Message-State: AOAM531JVNDEehIlacHtro4zqF1plj+wf9hOPA3whba2ojGOQMeF9UCm
	+35aNWU0U+yLHKqIRxOzE8EKVE9ZqxY=
X-Google-Smtp-Source: ABdhPJzKIvSC9E/goJ5oKFfcxDNEZkyCMwgWLrvnh6Dl+Ui52iMuoeM6gskWzzy2pG1VjIBCKmxs+g==
X-Received: by 2002:a37:a041:: with SMTP id j62mr2794544qke.423.1633636593597; 
	Thu, 07 Oct 2021 12:56:33 -0700 (PDT)
Received: from [192.168.11.151] (d-65-175-184-10.nh.cpe.atlanticbb.net.
	[65.175.184.10])
	by smtp.gmail.com with ESMTPSA id a2sm286696qtw.25.2021.10.07.12.56.32
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 12:56:33 -0700 (PDT)
Subject: Mate Desktop questions
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
Message-ID: <a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
Date: Thu, 7 Oct 2021 15:56:31 -0400
User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210715.162227.936.10@[192.168.1.100]>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,

I am setting up two laptops for sighted people, but I will be 
maintaining/supporting them. I am using Linux Mint Mate 20.2. I have two 
questions...
1. How do I access the task bar/system tray using Orca?
2. The Logon screen has multiple users defined. Sometimes, Orca will not 
speak on this screen. This sometimes happens at boot, but always happens 
after logging off one user and wanting to login again as a different 
user. When this happens, the Alt+Super+S keys have no effect. Other 
times it works perfectly fine--frustrating. Any thoughts/suggestions on 
this one?

Thanks,
John

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

