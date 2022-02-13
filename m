Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3204B3B87
	for <lists+blinux-list@lfdr.de>; Sun, 13 Feb 2022 14:11:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1644757884;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DqY+aDo1F5e//ZPcQhWCKx53oRpjkYATf5Yj7jqOhCQ=;
	b=UM53p3fanGfGAwrnu/wqDV69hXeqMqTE+DLK5fO355bG5zYJM5bK3vi5WLitU3I7v+lYfE
	wthZ9Ir1LumMoO9N1X5TkWe0xNwwQYShKpBimGgLQFaUZD5ucFXZCn3GuRs4H5gRVQsOBz
	/t4pO45mrIdZmfmgoloMq8kgfqild0M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-339-ysvODlzkOICB8yH-c6NzFA-1; Sun, 13 Feb 2022 08:11:20 -0500
X-MC-Unique: ysvODlzkOICB8yH-c6NzFA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A94AA814243;
	Sun, 13 Feb 2022 13:11:13 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CC37C7C0C5;
	Sun, 13 Feb 2022 13:11:10 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2BDC01809CB9;
	Sun, 13 Feb 2022 13:10:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 21DDAe8N024245 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 13 Feb 2022 08:10:40 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 52CAE1121319; Sun, 13 Feb 2022 13:10:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4E1C41121314
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 13:10:37 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 466EB802E5D
	for <blinux-list@redhat.com>; Sun, 13 Feb 2022 13:10:37 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
	[209.85.216.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-356-DvezZSS7NeivFU0C_HeJ_A-1; Sun, 13 Feb 2022 08:10:35 -0500
X-MC-Unique: DvezZSS7NeivFU0C_HeJ_A-1
Received: by mail-pj1-f47.google.com with SMTP id
	h7-20020a17090a648700b001b927560c2bso12005729pjj.1
	for <Blinux-list@redhat.com>; Sun, 13 Feb 2022 05:10:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent
	:content-language:to:from:subject:content-transfer-encoding;
	bh=+/D6uWkPjyFpO/k710psJU9eYlKcq7NWN61afT13hwE=;
	b=7QD68lpFqInx13tfuEdWdXKEoKBNrap6p+qfj7V9LxGwVwKXIJCW2fb5yw+Hbw03pE
	j/+dstAkvPQzh1LJdvyRovrt5+F2DLuk9AUwDu2e/2FwXoRY4TiViXXHcgUMRSp5NLHa
	7xLVp9pXVBtMUpAjTH1Og1rlAEP56KyuSwT5t92XV8wTk4IG4xRjo+vxa4GM2SDbxxI5
	/gU9q7/9+icMehb4sqGT31ASWpIdTxCbIVae26xesmLM8pbKw1GnjyWkX1ySVZuOdKxK
	Y/iMXlzhvYSiCTzUCXBW7slrB/6uDH3zZQmC5oHMgvDExn24OctvuRROR2kjrkNUBOf6
	E28A==
X-Gm-Message-State: AOAM531rVqbQ2+VaJkERnmrq22vHd2GPQ7FrnZu9pHaEwZYy7Z4QNFxg
	+0DnG/mwXXz6h75BdhOIntIcKzY3XAs=
X-Google-Smtp-Source: ABdhPJxyUALte8TxJLSHSFMjmNvUQbhj3OYxtVRGPSxr1CffjqRi2VDR/BF+elgBzDrc10H0C48pQA==
X-Received: by 2002:a17:903:228b:: with SMTP id
	b11mr4279824plh.104.1644757833736; 
	Sun, 13 Feb 2022 05:10:33 -0800 (PST)
Received: from [192.168.1.107] ([103.121.18.12])
	by smtp.gmail.com with ESMTPSA id
	q21sm34408571pfu.104.2022.02.13.05.10.32 for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 13 Feb 2022 05:10:33 -0800 (PST)
Message-ID: <60d78e73-30de-c36a-482c-8ed70596bee3@gmail.com>
Date: Sun, 13 Feb 2022 20:10:30 +0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.5.0
To: Blind Linux <Blinux-list@redhat.com>
Subject: Coqui STS model data
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi list,


I want to experiment with Coqui STS and need some advice.

I download sample code from

-- https://github.com/coqui-ai/STT-examples

First I tried the python mic_mic_vad_streaming/ but when I ran it I've lost all audio and control. I had to go to tty1 and reboot my system.
And then tried the nodejs_mic_vad_streaming/

It asks for model data which I try to fetch from
https://coqui.ai/english/coqui/v1.0.0-digits

I already use both my email address and still got nothing in my inbox.

Can anyone can shed light on what to do?
I'd appreciate any help.

Best Regards


Edhoari Setiyoso

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

