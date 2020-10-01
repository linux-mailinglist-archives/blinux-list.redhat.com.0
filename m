Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 00AF227FC7F
	for <lists+blinux-list@lfdr.de>; Thu,  1 Oct 2020 11:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601544704;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c4VYpjVBtDKWQFa5W81XX955RUC4jNpLPXdAhqvvTfw=;
	b=Fb1mgplNV8pBc1ylfrNuziMmM4Bqga+wLarP82LiMOXszS8AHQ3cI5vebfrByM2cu31d01
	bvrJzOZMoVimY/UGNy/2/v6rE+fL88Y9DMR3J3tDDai8ftezHeBM7DwdloQk+v1KcOKD2C
	1UDv8O7NGPMFtvNxF51nWuq2pBLLgzI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-331-fLBJrHnSM4Go7K4vftMQJQ-1; Thu, 01 Oct 2020 05:31:42 -0400
X-MC-Unique: fLBJrHnSM4Go7K4vftMQJQ-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0615664082;
	Thu,  1 Oct 2020 09:31:37 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 236E25576E;
	Thu,  1 Oct 2020 09:31:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1F247183D021;
	Thu,  1 Oct 2020 09:31:32 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0919VNns020433 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 1 Oct 2020 05:31:23 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 822042166BA0; Thu,  1 Oct 2020 09:31:23 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D6142166B27
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 09:31:21 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81A98800883
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 09:31:21 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
	[209.85.128.49]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-339-uUi5ppj2Mgmv5Bjyv7wGFA-1; Thu, 01 Oct 2020 05:31:19 -0400
X-MC-Unique: uUi5ppj2Mgmv5Bjyv7wGFA-1
Received: by mail-wm1-f49.google.com with SMTP id s13so2177867wmh.4
	for <blinux-list@redhat.com>; Thu, 01 Oct 2020 02:31:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+viVX9eboXH3oftepD1iv19YVvxfTtie5HwaNitgRzc=;
	b=gBbmlHY2lbqyFT2hj/QUTCV84aQP7yHp3Ql9ifrbAz+a5l2lLaWE+QPPC6Z7x14Zm3
	UM9mPq/d6r6YnfDDeJ5Arc6BIqBGrtLROCp65GUG6AutNNYU3u43DvepqCAc5PKLOjhb
	qWkBEgOAblakiUoeUOEenvkCNocv1p9aiWRjkdEAgngTisfKX9/2fdOi0gWDSXKBDrvk
	IRQ9GfN0Q6TcRP+rSHPWGXg1LSLo6ITuCt/aQb19cfC4I47a5sWuuaxVg9AHsQwDYuKg
	5DBM40d8TNVa47zpYBQ8dbtDb4jxM3PF46MjiIelrLkJ1GxP4g3L39SI4C0DtJZPrx0c
	NtIQ==
X-Gm-Message-State: AOAM532+8QoxvBeJaEKqahyxcMcdErDaghOFblhh3/yBI9bCf7rTaCJ/
	GMuNIFj4PQVQ5zE9JzuGOkWEkiX+kbBXmQ==
X-Google-Smtp-Source: ABdhPJz45teoY7iWEPXiWx+JJed6fBDLAJENLZPkYHAqdkbTZJNoHYIrgtnJCuD/TPSNT4b0pP4rXw==
X-Received: by 2002:a1c:6a08:: with SMTP id f8mr7711468wmc.151.1601544677899; 
	Thu, 01 Oct 2020 02:31:17 -0700 (PDT)
Received: from [192.168.1.130] ([87.75.178.108])
	by smtp.gmail.com with ESMTPSA id j10sm7946776wrn.2.2020.10.01.02.31.16
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 01 Oct 2020 02:31:17 -0700 (PDT)
Subject: Re: console screen readers
To: blinux-list@redhat.com
References: <alpine.NEB.2.23.451.2010010138250.22862@panix1.panix.com>
Message-ID: <90fed4b0-7e11-cf0a-c47b-7ef7b376e383@gmail.com>
Date: Thu, 1 Oct 2020 10:31:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2010010138250.22862@panix1.panix.com>
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
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

I'm going through replies, and this is an amazingly fascinating 
discussion. I got pointed to CDDA for a game to kill time with...which 
console based screenreader works best with that one?

On 01/10/2020 06:39, Linux for blind general discussion wrote:
> the tdsr package works.
>
>
>
> --
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

