Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A43E7460271
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 01:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638057682;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=jokmi6Rzwi/ad0/JPhSXfBDnqzlCGviZ7JNyCrlfy9Y=;
	b=EYHWOzLSGWF8BBgXzuqqPLXVpptO3TfNSIncI3DQtCKCvMG470PNrxVjHC62CsCJcfEOOt
	nUYYf42t0geX4kVDfO5Mn2BxuJzvGmwQojea5xhpE03HD//B2irt8vOsQdNLvp59hgzdeD
	QmujG7hSl2dyI829zxkpoo8Lefr46nE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-251-ttAiY5HSMWemzzgTwLH6pw-1; Sat, 27 Nov 2021 19:01:20 -0500
X-MC-Unique: ttAiY5HSMWemzzgTwLH6pw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 4354B180FCDC;
	Sun, 28 Nov 2021 00:01:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 36C6A19724;
	Sun, 28 Nov 2021 00:01:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8AD22180BAB6;
	Sun, 28 Nov 2021 00:01:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS016s2004809 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 19:01:07 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D3DB12166B2D; Sun, 28 Nov 2021 00:01:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE8DD2166B25
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 00:01:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED7DD811E80
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 00:01:03 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
	[209.85.219.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-334-sEG-JsnoNyeM2cxziOrzLA-1; Sat, 27 Nov 2021 19:01:02 -0500
X-MC-Unique: sEG-JsnoNyeM2cxziOrzLA-1
Received: by mail-qv1-f41.google.com with SMTP id gu12so10587927qvb.6
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 16:01:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=f9GCnf+d5WzcJ23G55s5Cv1PvLzcpwkVxBKsyJNBxJw=;
	b=P+pxplSA415ylN8wIdTygYqPqPMQD4WWQBH65Mgu4H5VBS488/kRDTgEHyz1fw+n3z
	jtn6il+Rb3CSNM0X7v+doCOWEDmE/CYBrqzU22BdQWg8/QIg1HdzZe5TPOXDeJhTG+s6
	pUrLhm5xYvM952LP2wgz1dM6U4K577Ytby4g40eHencV4J6pnv2dsvFm8sCkf29mqBtX
	H3wp9ETGhNFtMlIS2yJkq1qarBtXP+FZmEN1RR5r5QPnDlvNbmnnXMb9uq8zbXNa1GA8
	4F2t5W+Cdrzi8YIwk6NtBP1BGXwKQRbVT2S3Cz+7e9DBYgIHRdagX7CQsymEQ8aYUE/l
	sgtw==
X-Gm-Message-State: AOAM530Xy9DC3UAQ47/2w2sUezGiPhgcE/NBKSYfktqZ34v7SDTeE0hy
	Se16vHNNUtK0L1/Gcrl+QjP3GWwENSwR97jv
X-Google-Smtp-Source: ABdhPJxbBTVP5ZI2cmqQgozjF69iT+X8v9Dddbcn79kY6d2RguhcKRiQdnoIbI70X7sG+wyIEHCLKQ==
X-Received: by 2002:a05:6214:410e:: with SMTP id
	kc14mr22604825qvb.73.1638057661239; 
	Sat, 27 Nov 2021 16:01:01 -0800 (PST)
Received: from darkstar.example.slint ([2601:152:4000:330::16])
	by smtp.gmail.com with ESMTPSA id c1sm6133429qte.79.2021.11.27.16.01.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Nov 2021 16:01:00 -0800 (PST)
Subject: Re: looking for two gui accessible applications
To: blinux-list@redhat.com
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
	<188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
Message-ID: <c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
Date: Sat, 27 Nov 2021 19:00:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Thanks Chime. I will play a little more with Tab completion and see if I 
can find some use for it. For the time being I am very happy that yt-dlp 
is super fast in downloading compared to the youtube-dl which was slower 
than a turtle.

Cheers,

Ibrahim


On 11/27/21 6:29 PM, Linux for blind general discussion wrote:
> Well Ibraham, tab-complete will only work with files on your 
> hard-drive or in another remote shell. So you can use tab to complete 
> a directory name or file, but if there are more than 1, it will read 
> you all choices-and-you can fill in more letters to tab-complete to an 
> exact name you want. But no, in most cases tab-complete will not work 
> in web-sites or youtube cases.
> Also, please consider many files in Linux have capitalization, so that 
> will affect your first letter in a tab-complete.
> Chime
>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

