Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F85D4602DE
	for <lists+blinux-list@lfdr.de>; Sun, 28 Nov 2021 02:52:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638064351;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=i3Cz5rqWbZTgTR3j3K1WAEwT2x+kOWckENaWPR5ZG7o=;
	b=dIOsZmcc0mewzVnwyOM1Zj4XeEZRkcIiJOucQCXzkdlnBpaIcIrVkK0Lm3NAm7ZePzlv9P
	f33p6+0vGYSNx9BfYswUdq51JdVTJX1s7VOr9W4M8UKtep2vMsx+3N1VAf8HcyHUPAVogy
	pQx6uZfy8/DshK4kjDvutxMUuqLSLlg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-237--ghnbP1_OqKeewi-cvPvew-1; Sat, 27 Nov 2021 20:52:27 -0500
X-MC-Unique: -ghnbP1_OqKeewi-cvPvew-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 5793381CCB5;
	Sun, 28 Nov 2021 01:52:24 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E9F37944C;
	Sun, 28 Nov 2021 01:52:24 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D49FB1809C89;
	Sun, 28 Nov 2021 01:52:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.rdu2.redhat.com
	[10.11.54.1])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AS1nnFu011853 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 27 Nov 2021 20:49:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id F1B3E40CFD07; Sun, 28 Nov 2021 01:49:48 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC5094010E79
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:49:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D2512801E6E
	for <blinux-list@redhat.com>; Sun, 28 Nov 2021 01:49:48 +0000 (UTC)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
	[209.85.160.173]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-196-17SsMzqCPvGz4_i31WYxrQ-1; Sat, 27 Nov 2021 20:49:47 -0500
X-MC-Unique: 17SsMzqCPvGz4_i31WYxrQ-1
Received: by mail-qt1-f173.google.com with SMTP id q14so12686807qtx.10
	for <blinux-list@redhat.com>; Sat, 27 Nov 2021 17:49:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=qTj3jrAFN9zHFsGQhyX2ddE/ZQoExfNKf81+OwDDIac=;
	b=q+wnxxONjJGBtbMZGLaGRPG42FTG6hSev+ysmwp9vDdyHN9/i+mOdsTqpXDR/k+UcO
	ZBkZykD65Qb+t7kgfQ4KUoXZN1WA50liYlpqW2v46agRMh6dmOzyJatfaQneFmE+C8Lc
	gXsx1rA8OxQdCFVzKH7MA59SxVMD4w4dpkH8ApmJVsXlYS64/ofa/nzPDc9NnLvV+lkf
	KxKK3Y8TMawIET5rNheJS+EM68mGEuDgnWsWv9XKV5mexF6tjIGC0BPLQKEk8+Pn4DYF
	Q7wU4h9IRBJiJrngOKdnsSc7uJ/qlnDpSN8JEe+Mf/azwd5GKjdcoCuFKczQKv978BOj
	IbjA==
X-Gm-Message-State: AOAM530nBkYcqlSUGTwaNsrlkn4Ps237ed3CMLNf2FQE36uAXciL0g04
	wLMuUGdMiCFrBFwSpq0F/LeYFMSKkx8=
X-Google-Smtp-Source: ABdhPJzqDRACSPt5mTLfqHKUkCS0BNE1YTCBAcxg5QVucwT2YUwRArF7dAuQardb8w6eDSpx5eHPqw==
X-Received: by 2002:a05:622a:1d5:: with SMTP id
	t21mr36027916qtw.119.1638064186472; 
	Sat, 27 Nov 2021 17:49:46 -0800 (PST)
Received: from ?IPv6:2603:6080:6304:450a::960?
	(2603-6080-6304-450a-0000-0000-0000-0960.res6.spectrum.com.
	[2603:6080:6304:450a::960]) by smtp.gmail.com with ESMTPSA id
	d15sm6291580qtd.70.2021.11.27.17.49.46 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 27 Nov 2021 17:49:46 -0800 (PST)
Subject: Re: looking for two gui accessible applications
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <531583b5-d857-7994-c615-9ffbcf9d91fc@hubert-humphrey.com>
	<8DC6B514-04F7-459E-9515-2BBDC9B679BD@gmail.com>
	<20211127173705.fcq6hh2qbozygm42@alex-pc>
	<77236cdb-7bff-28be-19db-523e15e3a5ea@gmail.com>
	<188e6c5d-8c4c-5521-5d51-556423c3294c@hubert-humphrey.com>
	<c48bf756-d98f-0659-c826-76648ec82e64@gmail.com>
	<CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
Message-ID: <7f5dab52-8e05-073e-11ba-4473b3aa7079@gmail.com>
Date: Sat, 27 Nov 2021 20:49:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <CAO2sX30Ep5qhUcuCYvg0X9vuVV9LQaZZEoe=AQ8G2C_ekcCfKw@mail.gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.1
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

One place where I find tab completion quite useful is in things like the program 
known as doctl, which interfaces to the DigitalOcean API, which I use to control 
DNS for my website domains. This saves me a little time in most cases, as I 
don't have to log into the website and find the necessary links, buttons and 
controls to change a dns record. These days, I do this rather infrequently, so 
going to the website is probably fine, but I still tend to use the doctl command 
when I need to make a small change here or there, especially if I need to add a 
temporary TXT record that I will be deleting in a short time.

This doctl program has a completion command that generates tab completions for 
various shells. So even before I authorized doctl to connect to my account for 
the first time, I just ran

doctl completion bash >> ~/.bashrc


and I get tab completions for all the commands and flags available on the doctl 
command line. So for example, if I want to update an existing record, I would 
normally need to run this command

doctl compute domain records update --record-id 123456789 --record-data 12.34.56.78

But with the completions in place, all I need to run is

doctl c <tab> do <tab> r <tab> u <tab> --r <tab> i <tab> 123456789 --r <tab> d 
<tab> 12.34.56.78

Yes, I still have to get this record ID, which is in fact a 9-digit number in 
many cases, but I can pipe

doctl c <tab> do <tab> r <tab> ls domain.ext

into a file and paste the ID I want into the update command. It is certainly a 
roundabout way of doing things, but it can still be faster than logging into the 
website and finding the DNS controls there. It would be really good to have a 
zenity or yad interface to this program, and maybe I'll get around to scripting 
something like this at some point. For now though, tab completion works quite 
well here once the completion mappings are added, even if I'm just copying the 
doctl configuration from one machine to another so tha I don't have to 
reauthorize the program.
~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

