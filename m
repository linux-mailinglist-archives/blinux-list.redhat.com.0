Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D985A4A33A5
	for <lists+blinux-list@lfdr.de>; Sun, 30 Jan 2022 05:10:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1643515816;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=NTwWv0ZuJLZ+Ss46dhXM1sIrUo6r3c7ETRhzQAr+g5c=;
	b=BzgSyUZAUBxV/a4jd3U0NMiuDwUVeRHB1F65hrzh8+Cv0puscjrmD0FYInUDgG29xgWKKK
	wux+Es0Hvt6MnJQv6PJak4F7sgGMEKEk2Mf2o/L93MuDBpvu9/JFWVo9WQ3SRhCGayIlRp
	WSDcJb4Nh8vWauMLPDG9bTypJRjV3hs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-335-jt-5dYvyPFmMmKKY4RQI5w-1; Sat, 29 Jan 2022 23:10:13 -0500
X-MC-Unique: jt-5dYvyPFmMmKKY4RQI5w-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 291D91006AA5;
	Sun, 30 Jan 2022 04:10:09 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F8EE5ED27;
	Sun, 30 Jan 2022 04:10:09 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DB5AD4CA93;
	Sun, 30 Jan 2022 04:10:08 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20U4A6hr000690 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 29 Jan 2022 23:10:06 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 38DDB401E68; Sun, 30 Jan 2022 04:10:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34ABD401E54
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:10:06 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1B8B6101A54C
	for <blinux-list@redhat.com>; Sun, 30 Jan 2022 04:10:06 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
	[209.85.219.51]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-326-AmYLl1qIObmrGqiHSByr9Q-1; Sat, 29 Jan 2022 23:10:04 -0500
X-MC-Unique: AmYLl1qIObmrGqiHSByr9Q-1
Received: by mail-qv1-f51.google.com with SMTP id k9so9637677qvv.9
	for <blinux-list@redhat.com>; Sat, 29 Jan 2022 20:10:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=5fQURt87vvA1Jf7Gk4V77SG/0pDIXffaek/kCrQ+a1g=;
	b=myaLD/Zi6ZuFq/Sqga3aevDZ1T3bgdAmioquHHGer44e1PZ01Z2veYiTFiQ5G8W2Fl
	AowTg5LLauzJf8sZQ1wGasHFm2oxfo7Nk79lc40ykfsYNpYe+0VFq3E1ds7BqPfzWcw9
	BhdsT1iIAE9HdMEoje1vo73Ac2sFO7KJRG7vLN/8oX2b5XD3FMXYk7bnjkkejk79i8tk
	gjzvqvROY46AOcwThbgdTcZHAw4MPvAS2svfXg3VKrHFytESBID0c9wzlPZmhQMQJ1NR
	rcPVLe/8VbrDBimtrk2CIY4WhVVFfvWU6kQQi232824D7srWo8v02BQ3r/O5HPCEpmiP
	Bjrw==
X-Gm-Message-State: AOAM533SjLc0067621IBn9iilnhtJyOPbt+jgFrRl/C/lvn8iYGH1JuL
	9AAKYM5Fo6W8Ty4V0YgAhSlwsp+gluKYEA==
X-Google-Smtp-Source: ABdhPJyU1HWf0s3qiYI1z9cz2zxK7v4sA//DtUsuTfbZ8v4SOsyX4LhtXC3JnQ+DsejPFwycm0BQtg==
X-Received: by 2002:a05:6214:27e9:: with SMTP id
	jt9mr12205895qvb.65.1643515803279; 
	Sat, 29 Jan 2022 20:10:03 -0800 (PST)
Received: from ?IPV6:2603:6080:6302:e002:e826:5227:4681:6e2d?
	(2603-6080-6302-e002-e826-5227-4681-6e2d.res6.spectrum.com.
	[2603:6080:6302:e002:e826:5227:4681:6e2d])
	by smtp.gmail.com with ESMTPSA id
	u16sm6396396qko.130.2022.01.29.20.10.02 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 29 Jan 2022 20:10:03 -0800 (PST)
Message-ID: <13bfe498-3333-d2a4-63eb-35d0cd73bbd6@gmail.com>
Date: Sat, 29 Jan 2022 23:10:02 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
Subject: Re: Looking for good radio software
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
In-Reply-To: <76ca400a-9d22-df23-7de2-82c3e3a16967@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

OK now looking at this for myself, it seems you will need to go to 
pandora.com to create an account, but once you have that set up, you're 
good to go with Pithos.

~Kyle

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

