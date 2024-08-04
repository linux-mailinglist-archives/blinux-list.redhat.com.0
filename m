Return-Path: <blinux-list+bncBCFIHJ744YGRBGXVXW2QMGQECTFNJDQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id F0676946EC7
	for <lists+blinux-list@lfdr.de>; Sun,  4 Aug 2024 14:56:59 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6b7ad98c1f8sf19888756d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 04 Aug 2024 05:56:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722776219; cv=pass;
        d=google.com; s=arc-20160816;
        b=EyvAJEPmmtiT5Dd2skV/Pks1giXsIgDJba3kfKRrCorV3rQd3BpYCDQnYZ2Dsid0zF
         O7nqhHVivGMlmcDMfhKWEBPkA7UNckD4My50T2WVBIN1c7rq+pshluCrI9CSXSREkwFb
         dfq2OncIXic2AYQ8J1LM7rEgf+WTF5HLaUd3giIe2Q3M2TfQYvmNbSAlpA1rgHtxJzA7
         lCbzzbaoC784JRO432MrMVBl/DWLc4EYSiQuXUjKUTvhf6FJHAe8doayLjqqBwEx2DbD
         WZjuq6Boqwx5sXrxYfjsFJ4HfaUsEff5j7ZvLnBIvfvtUqDSgJzlkqZnkcg8snO2i/sK
         wr2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:mail-followup-to:message-id:subject:to:from
         :date:delivered-to;
        bh=yx+tkliB+3Hpebm8WSaTPgi9TKMWH4mRsNt8xsq8+ZI=;
        fh=JzZOe7Awbjj17rRjr5dqB1+fcDCB/zk/+lxpkCK3sEU=;
        b=BULHjW3EGWzbGA+JKnoHSAfGh0vItYBzZWtLA6Wk0BrKA7IbGVsa5fFuDC9vQ0Uw4M
         +Iq322TSLXAEbXUpEQXl3v9w3YdIuSazGvPgQxHUTUE8bm7e8KqaJftKa2/PeuUag4O9
         zAuhQnn9dc/78UWfVNEjg0t6opuAzlIAcnuqEwtefXVw4UabCpu5TwWhpTVIG+xDzRjd
         VF0zQgiyHPsZjp55UlntT6KVYGc2CGqx6ujyv65WttR4/DrcMpzz9TaRqs/EepUDBvXN
         r0E6HkR0/zAJauGKpazijzGhnGYhu0tvxFm/wHLLvc/zK48jnbUxTEM6NYM9/9xM9J7/
         GzQw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722776219; x=1723381019;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yx+tkliB+3Hpebm8WSaTPgi9TKMWH4mRsNt8xsq8+ZI=;
        b=DazDOhcAIrloOHoWAlJpo2QJurzBYrR9yJhiD1Fqt3fa3VVLS6aOqaqaalpkULJ/0U
         jmp3B/l04MD1CR//1VXSSKh5POG7FluH99fb1TJXSdNImW2IM42pGbXIbAiKJIECrSDA
         djsbz85DQQ+WkFpLYGn5f/ZeK52jCbeW147nXGKioK0WrjAhKOvQs/vCu0LXGWN1072f
         Z2WV+9goALrdsngf57OzSGytrLxkJ122MWYw+9cUHKn7/SMmeKXARoXAU1fxW85EF4YV
         dqSfSrJp+gdJFdqnd6gX4YWh7k8uZKG/mZ2Pelpi2dsvCTCKXxGhZWAiRhKWvofqTbc8
         BzWQ==
X-Forwarded-Encrypted: i=2; AJvYcCXCJ5ciygChbjgTV8w00qEwWWFZhQG+qYjH7CoqvUSx46QJoUOBzZJ1bmfbc27UZXsEIYcawA==@lfdr.de
X-Gm-Message-State: AOJu0Yx+nCZF1qKlSH3kbLmwkh2d5UfPgrl+cTATa70O3XZvAf5nMGFo
	ceC5pc89Zz8luRd1GJvFOq9CS0OO20jPlF8GcCMf30uMWiZTBj/5Xe2Tpoq9lUE=
X-Google-Smtp-Source: AGHT+IFc9/4DWe617oxVxZTyefFPuQ8wSKcdOIHX9vk3akqtHEhxRr2YppyZgLadzeWSCmqZ+a5L/w==
X-Received: by 2002:a05:622a:181d:b0:446:5a29:c501 with SMTP id d75a77b69052e-4518920ad88mr69030121cf.1.1722776218517;
        Sun, 04 Aug 2024 05:56:58 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1915:b0:444:f3d0:bcbf with SMTP id
 d75a77b69052e-451973b7528ls26341651cf.0.-pod-prod-00-us; Sun, 04 Aug 2024
 05:56:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUBCFNM60yMxB0gKMWy2ZtWQKHmAG1C1hi5RDfR4VIzOUz/efJdTj60rYXVJGwUKL3Qe7uQIqgnsFr3CuQAkmWCibVPuS7NBuzFzVUO
X-Received: by 2002:a05:620a:3904:b0:7a1:df8e:3266 with SMTP id af79cd13be357-7a34c06899cmr1853673485a.16.1722776217533;
        Sun, 04 Aug 2024 05:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722776217; cv=none;
        d=google.com; s=arc-20160816;
        b=L4lGKS3t4sILGquHgIvxnO9bup9g4T3OjaBEi6UG6n2aod0J7r9bvY3h1IdeI1og2m
         A7yshI7Vt2QoS0sYvDlOBh1bHf43BEM+VFU9JYLT17NZsTsgtNmLKL5VZ/xk+vSwfokq
         2pC8SQTyKuDdg5sIpoayWCABCQ7tuMF361X6Sef3uKZDyD9fHztP2tJRqANw8a5q1Fw9
         U9g6P6vbotFwrwSUqDGo7GRzSHuPBYwgPogtGFIgmNtjDOpCnbAa8rTAhTFFLvLXy2IH
         eGl4P2z9ep4AKy8uaHjJN1HvRLBmJiISEYQl02AFF+N0YUK/QW+jCoz/ib5AM01ebroy
         L0Jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:delivered-to;
        bh=rAcerEurD0/P+XLWnjKHBdSG9Ru6Xy1o21NdeFEB1BI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dTOyIchZDVmfVcytVPgABnVAr1JNijwI4py7V7JYapKQ4T/2MaUv4YHQle6amamfGf
         bim/Xk80k5+Gu2a+4l5P1PwAYVu0CIue+XstCFGR/vDEqbF+YhJ9fefaoKwrn4i1WzRD
         t5M9lvEtA0d5q2zQVycRox7/xQDR3QQL3ZqCa2B7/4lyyr4t2nDaGUKYOy+F5DrSE+eZ
         EE4fffWu70tCreF9+QManuiITwmpKa4NMegwNO8fftUop21RplfCt9W83r84RJcpmDsQ
         SLM7uIRJxIpCRQkRJIiuqxzgCyOEVoTgHx41L2HL+DV7arE0qbnzXHSNgGqsu1PK/g3f
         Jv6g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) smtp.mailfrom=blinux.list@thechases.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a34f6cfa4asi713746185a.24.2024.08.04.05.56.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Aug 2024 05:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of blinux.list@thechases.com designates 54.39.151.74 as permitted sender) client-ip=54.39.151.74;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-660-fzYSCZIvN6S0_DDusfBRmA-1; Sun,
 04 Aug 2024 08:56:56 -0400
X-MC-Unique: fzYSCZIvN6S0_DDusfBRmA-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 36DAD1955F0D
	for <blinux-list@gapps.redhat.com>; Sun,  4 Aug 2024 12:56:55 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 31BE4195605A; Sun,  4 Aug 2024 12:56:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2FA6E19560AA
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 12:56:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C18B8195608A
	for <blinux-list@redhat.com>; Sun,  4 Aug 2024 12:56:54 +0000 (UTC)
Received: from thechases.com (thechases.com [54.39.151.74]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-689-k2Hf0uPqPBKhNdRwLpXLjw-1; Sun,
 04 Aug 2024 08:56:52 -0400
X-MC-Unique: k2Hf0uPqPBKhNdRwLpXLjw-1
Received: from localhost (thechases.com [local])
	by thechases.com (OpenSMTPD) with ESMTPA id 7ab2b506
	for <blinux-list@redhat.com>;
	Sun, 4 Aug 2024 12:56:51 +0000 (UTC)
Date: Sun, 4 Aug 2024 07:56:51 -0500
From: Tim Chase <blinux.list@thechases.com>
To: blinux-list@redhat.com
Subject: Re: zip command info
Message-ID: <Zq96k0NdQn4sUW5n@thechases.com>
Mail-Followup-To: blinux-list@redhat.com
References: <0aab1a96-9868-d573-edd6-929f3d053e5b@panix.com>
MIME-Version: 1.0
In-Reply-To: <0aab1a96-9868-d573-edd6-929f3d053e5b@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: thechases.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: blinux.list@thechases.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of blinux.list@thechases.com designates 54.39.151.74 as permitted
 sender) smtp.mailfrom=blinux.list@thechases.com
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

On 2024-08-04 08:37, Jude DaShiell wrote:
> What is the difference between freshen and update in the zip command?

The Update option replaces files in the zipfile with new ones, even
if they haven't been modified.  The Freshen option only updates the
file(s) in the zipfile if the timestamp is newer than the file that
was previously in the archive.  So Freshen can be faster if files
haven't changed (based on timestamp)

-tim




To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

