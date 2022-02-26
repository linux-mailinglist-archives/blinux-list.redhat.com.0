Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC4D4C583F
	for <lists+blinux-list@lfdr.de>; Sat, 26 Feb 2022 22:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1645909828;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I3fxOI3Y0OukrHJsWZG37hihGcmRlMhaR/kbiCpgyqs=;
	b=GYgz8+M+ls6qMjjBIcVrEjOyvLRH5SWZ3Gmt8oiEKO3zBHayQt/fwSW9/oHm7vFtwsJPso
	p1I1AVSkeAOQPPv0luzb4jpSznAssKzK8NhVB1JunOXIPWn3tOO3ag/gezQQ/ZSEKB4BQ1
	wC6HN5Cz2e6TquXOtaANfkrT+QEU3XM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-662-eujAALJCNWW_dP_jLa14rw-1; Sat, 26 Feb 2022 16:10:25 -0500
X-MC-Unique: eujAALJCNWW_dP_jLa14rw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CD3E58145F6;
	Sat, 26 Feb 2022 21:10:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BBD6A4CEE2;
	Sat, 26 Feb 2022 21:10:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4020D1809C98;
	Sat, 26 Feb 2022 21:10:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21QL9aTg013614 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 26 Feb 2022 16:09:37 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D0F2240D1B98; Sat, 26 Feb 2022 21:09:36 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CCE79400E12D
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 21:09:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B51D6811E75
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 21:09:36 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com
	[209.85.214.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-274-pK9rOTcDPoOyLcL_7ZlBpA-1; Sat, 26 Feb 2022 16:09:34 -0500
X-MC-Unique: pK9rOTcDPoOyLcL_7ZlBpA-1
Received: by mail-pl1-f176.google.com with SMTP id h17so2043802plc.5
	for <blinux-list@redhat.com>; Sat, 26 Feb 2022 13:09:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to;
	bh=ZtKZy5qhL+T8LAUx6onfQqaZGen91ic1KQbB9nJWO0g=;
	b=D5FlVHI48th1Xg8p0mlkQaD4BicalNJ2bFQFyp41DClrDKuaV7tMaoz1N5UHksAbLx
	cgRceN3hwUMzq/qOH7JZSt3wo78IZD+8HV8NsQZcrRi1O+YzxacgZZhcPx8fRsh/qdBY
	Fm6Jg5P9vlRxvOnVRQJiE2u8n3S5I8crFIMRFuJL7LME1zdVXffYlDW4G9Jh7ILnAlOl
	9C2G2MLBhNRtLM8duvkdHlsmWbfV35e2Uz/iR2qa/g5GFKkuNcYTJyA++lpxTZv7zKUD
	r0Qw4p5qzgNVleHImp8eDMyqKIoPeza+4qCtXv74T65eSJEEG1dmpnCtjgpQmzZiKbG9
	80Sg==
X-Gm-Message-State: AOAM531XF/h9Fssntb7j7ocjKNKEJOxd6Im6PEplGGuCdopbs551AYBX
	1Zuvcf9cHaqasCymYJdjSA69MfXGVfqB0w==
X-Google-Smtp-Source: ABdhPJxnemN37nSEZfXptKu7gUE7jWjg+0SnFDmkcURclvEPfQS9wu6VdxJvjst6aQcTqqF9Agl7qw==
X-Received: by 2002:a17:90b:3b4d:b0:1bc:a5a7:b389 with SMTP id
	ot13-20020a17090b3b4d00b001bca5a7b389mr9321715pjb.148.1645909773163;
	Sat, 26 Feb 2022 13:09:33 -0800 (PST)
Received: from [192.168.4.38] (24-113-81-134.wavecable.com. [24.113.81.134])
	by smtp.gmail.com with ESMTPSA id
	c28-20020a056a00009c00b004f3e3fea979sm4004400pfj.149.2022.02.26.13.09.32
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 26 Feb 2022 13:09:32 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Testing Linux distros
In-Reply-To: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
Date: Sat, 26 Feb 2022 13:09:28 -0800
Message-Id: <19AF534A-3646-456E-A9AD-72AF49864B58@cfcl.com>
References: <6236d693-6b68-d164-9484-30e73574a4cb@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 21QL9aTg013614
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> On Feb 26, 2022, at 12:01, Brandt Steenkamp wrote:
> 
> I really, for one, don't like the VMware thing, and virtualbox is a pain.

If you like the things that VMware or VirtualBox does for you, but don't like the UI, you might want to try Vagrant.  It allows the setup to be scripted, avoiding a whole lot of GUI goo...

- Rich Morin


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

