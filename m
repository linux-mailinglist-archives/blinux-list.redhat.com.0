Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B9049F05C
	for <lists+blinux-list@lfdr.de>; Fri, 28 Jan 2022 02:10:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643332249;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JAkQwbdHSvNP7kIWT9RWq1C+PV7ieiuZrl34Jl+p/O0=;
	b=Ccdk3crzURc2IQ6Z196D58bVr/zevKpgn+s2UAJFOxTfHHk1nkjNVtO2v5aD7WHporrR5/
	i5KXN+gLdjGBtGKoTfXlvaokDVMUqj047fl7u9KBzDZ/Ae0SJRAB29xE5OGCD0tb2WCk6I
	PIiUJEqVaP7JNdqV02brV6fEWG4nInw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-184-EXdCpDIQOo-i4raFXaeenA-1; Thu, 27 Jan 2022 20:10:45 -0500
X-MC-Unique: EXdCpDIQOo-i4raFXaeenA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5FECD1006AA5;
	Fri, 28 Jan 2022 01:10:41 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E268D197FC;
	Fri, 28 Jan 2022 01:10:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E32804BB7C;
	Fri, 28 Jan 2022 01:10:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com
	[10.11.54.7])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20S1AZHE029028 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 27 Jan 2022 20:10:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 98A14141DEE1; Fri, 28 Jan 2022 01:10:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9480E141DED4
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:10:35 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7986C101A54C
	for <blinux-list@redhat.com>; Fri, 28 Jan 2022 01:10:35 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-35-6vD3Vz52N3WZFQCxWmpu7A-1; Thu, 27 Jan 2022 20:10:33 -0500
X-MC-Unique: 6vD3Vz52N3WZFQCxWmpu7A-1
Received: by mail-qk1-f176.google.com with SMTP id o10so4334476qkg.0
	for <blinux-list@redhat.com>; Thu, 27 Jan 2022 17:10:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=pgJqp2BXMeFUJS6fRxh0/nHudY1VJk01JskgOyysVY4=;
	b=babpUOyZWcLUDAuvxQ1B2ZlfGkisQ2SOP+9e6DnK2Gcza/b8+qAzNdacpSXIh3O/6E
	OZ7FokSgHdT+ggm78JVH0Qc2vbpuPl9tCPcxA0XvnuPtlv1lCBw6G+zkfs1fBbG1gbm2
	YxDnAhv7YKyuDt9VHTlYGM9yL1z7ZalReCvNOam8NzlJhbPh9arHgYbFsch6Oyc5gF4d
	5wBA8e4SED4dI99Jg2LzbkRAsjaPu0o/ASpftwrIgcdpo1RDktwCkkd7/Lk+GU3Vkts+
	xRO6IL6ojH0+Kfcg46FwmxhYSIzQ2uRoC8NZdhFfg8DybtRqp1vCRXZpgiqgQyUZzBW+
	RU/Q==
X-Gm-Message-State: AOAM532HOTL+gZR6ztMxpl6wVxNfTzSWC2tI1yXeWaun3BKEG3QSPlCK
	sD3qT5E3grwsRi194s2bmEBHmggqUGuMYw==
X-Google-Smtp-Source: ABdhPJytWWf6hjexyFXP1ZIxfvw+vnyuScSDKBFAU/+jcXd8etKmFNVvTDAVduXqoxvt3OTtsIMv+Q==
X-Received: by 2002:a37:9444:: with SMTP id w65mr4466620qkd.468.1643332233149; 
	Thu, 27 Jan 2022 17:10:33 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	b20sm2067255qtx.86.2022.01.27.17.10.32 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 27 Jan 2022 17:10:32 -0800 (PST)
Message-ID: <9b23be50-9125-dbe1-66f4-03936e6c2aa1@gmail.com>
Date: Thu, 27 Jan 2022 20:10:32 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Fedora-MATE_Compiz-Live-x86_64-35-1.2.iso
To: blinux-list@redhat.com
References: <2930A22F-EA6A-4939-A70A-6C92AF95E4CC@icloud.com>
	<84ff2447-0200-a2ae-1d7b-1d62d6853c17@gmail.com>
	<79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
In-Reply-To: <79793ef9-1158-eb3c-cfdb-8cbe2aa9bb1@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.7
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

It will be interesting to find if archlinux on bare metal using
> pipewire runs into sound problems.


I don't think it will have sound problems. Everywhere I run Pipewire on 
bare metal, it just works with no major problems, and actually few minor 
problems. Fedora and Arch both seem to work on bare metal with Pipewire. 
Virtual machines, especially Qemu and I believe VirtualBox as well, seem 
to be the only places where it appears to have trouble.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

