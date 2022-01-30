Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 732694A34AA
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 07:07:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643522822;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=gEzVcBvu2dUT66bniiJPFeBIub+LTdvvbw46VQH09cY=;
	b=fWJqucL2VHuQyfsDyKmIIpCNxJH1G8idwqqFnLTEi1+RjeLJTW3XOSi5OSC3k6Jb7gNoy9
	EuXg4mxtuQGP3Sf3v1+iTnM/Y8ohLRzMzdU+Exoays+731o+9y5SiQXAI3V7192vTXFnJ2
	++0M4IKfp22Ku7Mj0CWaFHYmaBMZBjE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-664-wVMkP2UFPZWfZA4wTbd5wA-1; Sun, 30 Jan 2022 01:06:58 -0500
X-MC-Unique: wVMkP2UFPZWfZA4wTbd5wA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id ECF91802924;
	Sun, 30 Jan 2022 06:06:54 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25FC96C18F;
	Sun, 30 Jan 2022 06:06:51 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 646924BB7C;
	Sun, 30 Jan 2022 06:06:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U66ZeW008640 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 30 Jan 2022 01:06:35 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id EB109C202CB; Sun, 30 Jan 2022 06:06:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E7418C202C9
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 06:06:34 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF01C101A54C
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 06:06:34 +0000 (UTC)
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
	[209.85.222.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-404-097mCdQxPfObv7ZUB_RZYg-1; Sun, 30 Jan 2022 01:06:32 -0500
X-MC-Unique: 097mCdQxPfObv7ZUB_RZYg-1
Received: by mail-qk1-f173.google.com with SMTP id m25so8302873qka.9
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 22:06:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=Kgk3Csy8pICEv5jKYaNNwiaqfe62izjoqo7n1WB7bw8=;
	b=gNVxyi1vTe3u9Q3NWMlgg19z8MFbl+3DdNyZjnxF6CeiKB2zV/yNXXn+bN4qmdHKYV
	G2QP7jtHQb+0d2fCRC3aY/fEQsXsu/HkwkJskOKWHOx3VmikIj7/XPNbWt55sR2X+TV9
	pG3AK08Xwj0/8FVJb3R+eiTKZbGoqXU0EKH/Aemqn/fxYk4WuMshXPxrcJOT0EGgLKnR
	TlJ+2gXxdpWgI39Gx5DmFKlDiyqRBzb/1eQzEu2WKq+vKVJpLqtS+LLDRp51RMpo62CR
	b8HrTkox0vjrTtmQB2W1G81NZ+UEXYXbFYuIekg89iLCv8lxCdhcCntVzcADohEFWgQp
	DCZg==
X-Gm-Message-State: AOAM530z2pmFJ2sm9UkNbsAK/6/DzieNo+q5XNN2U9xSfVAbCzWN806A
	71cD5ST0LxXA5qyo4GX2sezHn+Lp9mFJ6g==
X-Google-Smtp-Source: ABdhPJz2eoJvDdbb4iTFvxskL0NqIXtKSr/N9PTADeSFNtW20KXQziYVECHXkp8nx8OpOKA8KeUiBw==
X-Received: by 2002:a05:620a:d84:: with SMTP id
	q4mr10029038qkl.200.1643522791994; 
	Sat, 29 Jan 2022 22:06:31 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id t1sm4079059qtw.17.2022.01.29.22.06.31
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 22:06:31 -0800 (PST)
Message-ID: <1c9516f2-0b18-c4fb-d9ff-a1fe819a968a@gmail.com>
Date: Sun, 30 Jan 2022 01:06:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Looking for good radio software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
	<fb33c316-a8f2-a123-2169-257d635a9ade@gmail.com>
	<551c7a13-7276-386b-7af0-fb1fe9348da3@panix.com>
	<20220130.043315.938.8@[192.168.1.100]>
In-Reply-To: <20220130.043315.938.8@[192.168.1.100]>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

 From what I've read, Pithos is based in many ways on Pianobar, just 
with a graphical interface. I thought Pithos just put a graphical front 
end on pianobar, but pianobar isn't a dependency, and I can't 
immediately find it in my Pithos installation. In any case, both can be 
installed without conflicting, so you can just choose the front end you 
like best or install one for a graphical machine and the other for a 
text-only machine if you have both. These have been around long enough 
that I don't believe either is going anywhere. I know there was a 
problem back about 6 or 7 months ago where people couldn't log in, but 
that seems to have been resolved on Pandora's side fairly quickly, 
albeit with some pretty odd blanket statements about it somehow 
violating their terms even though they have developer API documentation. 
In any case, I don't think we'll have any future problems like this, and 
I feel quite comfirtable using and recommending either or both.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

