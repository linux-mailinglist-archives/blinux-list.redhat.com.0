Return-Path: <blinux-list+bncBCW5NIVR6ABBBHXSTCVAMGQEGWOBOPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 694BE7E0F55
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 13:29:20 +0100 (CET)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-5b31e000e97sf41450437b3.1
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 05:29:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699100959; cv=pass;
        d=google.com; s=arc-20160816;
        b=MYw56E3+P/x9iBESMBZqF1WfSgkKmrs2Kj0KbfKGj92FiITznrGnptPdRpoSfgulZ1
         NMrjvmVvAKzXm+v5IiI2pesUyPKXkocny/srRiSiA7gNto4WL63uPpufcmcxM+nyubZE
         fy08FEWUkl2D520KhZHf+9s+k/kiQKEsFd5qgSlBAnuemPZMHTOAQKSyBolU+r/M5a8d
         vhLNU4IpS3ai9FflvaIwXROjz7psLBaVKkwqI9TQfxM6YRX3D4HV3d6lQntiRhUrx1Ya
         X3sgvTFWRfW8II/nuPsNuKkysJcaTI9qt61HMjjf3BlsSn9dspdDGDDOmS/Y+ztfzW/r
         uZSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=51FBAxJqCJYPKPDwZGLLX2wh57fgmCqYmm/su8UH37E=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=PjEUkQLR7LwzSwv8SzvIKKgr8Har0wlznyhiBjCcpmRN/hCZMJJuT/nZGkf6qw7Kvq
         IVIhlyXSJKDbvs8lhDJD/gZSzAVgob7csGBkk9jW7y4l+lWBU2EPrwf1Sh4Y3Ceij3Hg
         9jNKMdS2pIuRRha5vL43ryQfwZLtgGbNNVBczH1T615Gjh8EVE5k3gzOmbJmw4YoxMCs
         y6Mn2qBBiWpOyIPqRrSg2iSH/9CT/vzpD7ALB9f/VfLQPIVt+0WW0yRuFk0bB0sFKy4j
         EymQWN1bb9smNb98Hio7Oyl55jR4J7vAsItAAevBv3zPTn0+LElG8OWlEnXqM1PVMs/c
         gHIw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699100959; x=1699705759;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=51FBAxJqCJYPKPDwZGLLX2wh57fgmCqYmm/su8UH37E=;
        b=iNRbqJbPUbnWdSZm89SmGKIxRQDDnaQITEmu9Mtp3rZl+jSK+wpNBpn+3FySnpFaPs
         xD7X16g4YfMCp26RnX8wBaDRKEvekcWYyTIEYzuqdwqFdH3gynFq6wY5zTlhx0HX2wyi
         AyQncWLqMYidzW+9BPzTeZdCwq+dkq7E9otYOoztoq8YwOk9uDWawusBsMnn05Ns2PmU
         IOg35/1I3TdsFW/0s1pSta19bMdHWrRUgaQpN4Djg747TxReHhZmJrr2MyikfB01b3j1
         VL1WXT+rabtlkSB++BJ6joaFLRVsYO21XJs96XEsujvyi7CQztY3k/V3pUpZKnUjzuY+
         TBFw==
X-Gm-Message-State: AOJu0YxRR4+uPIYmdiV0DeGshkeYPsC+ZQ+UjzjLgNwPiEHrkVhvvBq6
	K2Yrr5aDYCTvEDruxrsuum6X3A==
X-Google-Smtp-Source: AGHT+IEeCk6aqb0I5GG6xBpVgdFwloNDNqwpZehu9mYQgiPpdWGBhrGpFmViPUHYWJrN2DWhvSUrMA==
X-Received: by 2002:a25:db50:0:b0:d86:57cc:aa74 with SMTP id g77-20020a25db50000000b00d8657ccaa74mr24172703ybf.35.1699100958936;
        Sat, 04 Nov 2023 05:29:18 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4a18:0:b0:41e:89d9:f2f1 with SMTP id x24-20020ac84a18000000b0041e89d9f2f1ls2476057qtq.1.-pod-prod-06-us;
 Sat, 04 Nov 2023 05:29:18 -0700 (PDT)
X-Received: by 2002:a05:620a:40c1:b0:775:673d:3ac6 with SMTP id g1-20020a05620a40c100b00775673d3ac6mr27429549qko.47.1699100958019;
        Sat, 04 Nov 2023 05:29:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699100958; cv=none;
        d=google.com; s=arc-20160816;
        b=p+cU82bJw5UjlLLgljJIoSrXt/VVzqBf5nLDGA+emLha/QzvZh+vHvnosqLkCLmhKE
         TFk7efmNJPG/RqSH+rJUF2WWLpOkezpmeTpQgzUOvduP9fqaTiLGD2IWvxZ4IdCF0ONK
         4VnmfeHGlQBLr8GIVX+yWNcOpHg3WLm91fTZrsvVCfgKTaArx4ZwIx0X1RxUhx9B9cKi
         cB9+W4Wv4ilSzfQtRMC556P7kTrUh4Vpc6RnQeTWi5FYXp9kmg1Eujo62k29PA0EQ1K8
         KPzR5ybM4h8DwiheUCWui3T+982ZuNlpIwG9BBeMz1P8O4qPw9ENIMfZGASyEo5SkBl1
         qRNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=88t8qAXNgjHdncQNYKGz9aKc1Y3QR9Nbw4ugRgHsTwY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0nl93BqpxwC48/xFYvhn+Ng1V56UIwLccdpbgC8n0J2zXkW+96LQj0QjoLxMdSPnkC
         YGRw7b0zGUQJ2AIPASWIJuEZgabyrDSee7HHDTrjT7kKxAo9200Tcqg7QTlS3+s3ZvGg
         hhQJGdtV2W3QEzSUFn0E1t58LraDw87Z/fomLPtTSAaCr7yBWIuLRaF0yoM3rl/q5vfb
         MlSnqa2b2l2+9zD+eiGp2P+/WtKHqY3Lx7c7lAX7GBegztOozw5rtLxJy1HmtlGhupgt
         I4rJwB8vXB+spmN98t8cToXiWAm6abPz/gVgsDFlyKbfIuSY2v5F6shILyGwzQpIhPBb
         KCuA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.42 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id y16-20020a05620a44d000b00779d6c4d8c0si3239959qkp.300.2023.11.04.05.29.17
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 05:29:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.221.42 as permitted sender) client-ip=209.85.221.42;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-608-jk49hGR4N7ubPwBkkWNz7A-1; Sat, 04 Nov 2023 08:29:16 -0400
X-MC-Unique: jk49hGR4N7ubPwBkkWNz7A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9C27A811E7B
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 12:29:16 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 98AFE5030; Sat,  4 Nov 2023 12:29:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 90009502E
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 12:29:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6E70A101A53B
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 12:29:16 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-445-djwHzQxAP8mEsNVOKXKq6Q-1; Sat, 04 Nov 2023 08:29:14 -0400
X-MC-Unique: djwHzQxAP8mEsNVOKXKq6Q-1
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-32fa7d15f4eso1903143f8f.3
        for <blinux-list@redhat.com>; Sat, 04 Nov 2023 05:29:14 -0700 (PDT)
X-Received: by 2002:adf:f90e:0:b0:32d:9a36:b518 with SMTP id b14-20020adff90e000000b0032d9a36b518mr18260228wrr.69.1699100952750;
        Sat, 04 Nov 2023 05:29:12 -0700 (PDT)
Received: from [192.168.1.24] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id d5-20020adff2c5000000b0032da6f17ffdsm4312161wrp.38.2023.11.04.05.29.11
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Nov 2023 05:29:12 -0700 (PDT)
Message-ID: <22f4bbd0-963d-4260-b29f-01d9a3639769@gmail.com>
Date: Sat, 4 Nov 2023 13:29:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Relaunch complete command after white screen
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.221.42 as permitted
 sender) smtp.mailfrom=vlcekpavel93@gmail.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

Hi,

I installed virtmanager, but after step 3, I get white screen and I must 
to power off my computer with power button, so not all post install 
steps were done. When I type sudo pacman -S virt-manager again, it only 
reinstalls the app, without post install steps. So my question is, can I 
tell the pacman to completely install installed app again?

I enabled the socked and the service, I think qemu users were created, 
but I think it will be better to start full process again, because when 
I launch virt-manager, I don't see qemu as I know from Fedora, but I can 
see LCX and I don't if it's right. Also the setp 2, it was somethink 
with system configuration was not finished due to long time inactivity, 
step 1 and 3 done, step 4 - creating temporary files was incomplete.

Thanks,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

