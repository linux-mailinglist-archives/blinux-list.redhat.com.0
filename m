Return-Path: <blinux-list+bncBCW5NIVR6ABBBI4I6OUQMGQEDAI3XAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4957DA5C7
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 10:19:48 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d120c28afsf36663656d6.0
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 01:19:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698481187; cv=pass;
        d=google.com; s=arc-20160816;
        b=GtcMOWM8DyGm41WQXGO17idrsxcKk6pS6SU7j5gAe6PX7xO4FYqCUIl7+vWN46wVMq
         2o9RaRUz0blsw3Iw/79GAzaKHFmBHNq6sILgG2o4Vlf8joiTc2fUIRFSzkCrN2EZPHPC
         b9sv+CTls+N3Xh+yyFISjbfPYI+Jfe5lkD8qvydztUNMn8FkZcZgjxGQkaZCrlJAjdUo
         2NjMiMhkKdcfkPnqFDvNsraVh/4CrCKuixyWJo3Taiz7CbFCUjMwwHKmCFYm+uYFexzI
         jBsUlPTmVKZsR5TFSvlFJGM/vhCJVBn0qp674678iyFTWbpWlWc8k/jMXo3cajTBSUth
         Rj7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:subject:from:to:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=OPC728ps9hasfRw1bsP79i76mPt+OoByhZSMdb5hjXE=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=NLNa+9XnN56RWdhHwCG/1rFh57nJwXQXrwtvWKLQ9zAryVnsiGNkjerLXJD+uks3uu
         GHpb/Ky5dtlLBPIFt/2iwGIWCXk8qlxqPjyhQrm2VFi4mBTJvQT2x8OytyHUhzq3Mah/
         8pUavwaQjiwjHi8TkzklL3XGsWEHNLdKnRHrXUly2X9U5jKYLZd1CE3fhET9KNo2o42D
         4fd5Fj83XNSsCIj19OuiiSwlml7v8YHP4vd1z24njtU0Vp4irhKdZynOBhu7x/R0dmew
         QK2bReXOkFWXvlYh4k4ujdDcoVAJM1hCMk5iPzsrLhLPFqcSCNe0X1rA0D5QUcVRQwVz
         kUeg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.52 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698481187; x=1699085987;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:subject:from:to:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OPC728ps9hasfRw1bsP79i76mPt+OoByhZSMdb5hjXE=;
        b=G9Tbvjywgik59XyqNfvjCbevII+wmvXIVdc1IvcJoOTUPTRqwGNDbJ/v4lb4VOaV1w
         7EwUM0SiVdAFn6qdPvTs/kSzVGeMQ/th7UK6AjFvLU1awvVuzARaGq19E/JjnDkfbU06
         7DYICfw4bKBBXL58h2blYstb17DLI+eyEfymR/3ZFxxB6CoqKWb61ldNHyA6R9Yi1UcZ
         0y5ED9Cy1r2WRA5L/G232aFYPq2YTuZLVjSBWGS6M1QyujkJeMVKiWlJMxkXeyQ8Q7Lv
         M0ioSEK5s1IGCfS310+ltEsmHZHMNjYQNcEVrBNyPBAq3vIZjKoaHau2zVGJvd8hL0X1
         7wpw==
X-Gm-Message-State: AOJu0Yzd0wqnLy6mqHwCrx9+3qx3mb6EiBLvoQBF/0by3/vR2eRWoCve
	PS3Ja11LUuv9YZjcO/leOCjRWA==
X-Google-Smtp-Source: AGHT+IHVdwM6yqRrHGlBVaa8h15fBkOVwbFGEte/x1f4DWb366vh0TW5vfmmXXPhijkRpu5Wuzcp8Q==
X-Received: by 2002:a05:6214:5185:b0:66d:15de:329c with SMTP id kl5-20020a056214518500b0066d15de329cmr5087080qvb.43.1698481187336;
        Sat, 28 Oct 2023 01:19:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:946:b0:65b:2cc9:5f15 with SMTP id
 dn6-20020a056214094600b0065b2cc95f15ls1412307qvb.1.-pod-prod-07-us; Sat, 28
 Oct 2023 01:19:46 -0700 (PDT)
X-Received: by 2002:a05:6214:29c2:b0:66d:818f:a483 with SMTP id gh2-20020a05621429c200b0066d818fa483mr5233959qvb.32.1698481186541;
        Sat, 28 Oct 2023 01:19:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698481186; cv=none;
        d=google.com; s=arc-20160816;
        b=XStKQOGHrk66hfCgxu4ueMkY/J6VgzcaXZTN9pzieNKuiWO8mQ8DWbe8bKcOsPE3im
         2oDb/YUj5cduhVpd2iQNkiE38IkXos2CZqh62iGeFo2K3YRA1e1szBfpVghAmAtZ1+gK
         SOpZKEOQ+sNE8wYqVG6W5GMTdROrcY8ubGmZmWOJq5EoTHx0p/ZWNjXo4yImC4KyAhSp
         CHG2ecK/s5it1GWzV9BH77zWXQ2wv+wiPs14wINQD8WsEQLYMDvqZ5MgRvL4rTHjCwPe
         5TC6gzLG7ilfUJZp73xPyHjh3bQLuvHk2W0PgyTuN9TZ9oA6ham017Q1KIeGr2mWIBxc
         DXaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:subject:from:to
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=Ea8Pw0riOotUkTNjdu3v/SLh0NfL2J85uJSKiqR8mPM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0xJaEEG7v9JYZD3QvjBHdUUArbNjUCmXjfIJDJhvsw/IsHgZQNf92ut1iu45fKbBn4
         qJvKO9T6zcm9J2fBO6YAw03RflFoCqwS0scSw1KtIhepFCWZP3QdP2CRBQX2zh1YEMrw
         hD72xF+h0pZM30yRecHFlmOJ2y2mKYxu0ChLOrQpivoZgWg8Lbh7pCxhyFaYNMy9vrKi
         Z++ERECxAp0GSwPc/ow52+rKkdHyRqsnxeGUyN5UXZWh43zUh7wzYiBXnbQzy5KbMv5Y
         jlcwY7q0/8ZtKwSoh3eHCnwCcTE9kIh7cYNKIOINlAsh/Rx7SdMcAOoboNebqY+j0RBS
         UtMA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.52 as permitted sender) smtp.mailfrom=vlcekpavel93@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id n10-20020a05620a222a00b0077430a3a734si1772167qkh.786.2023.10.28.01.19.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 01:19:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of vlcekpavel93@gmail.com designates 209.85.208.52 as permitted sender) client-ip=209.85.208.52;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-385-rfHwMmG1MwqG_0hFGDI_3A-1; Sat,
 28 Oct 2023 04:19:45 -0400
X-MC-Unique: rfHwMmG1MwqG_0hFGDI_3A-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0EB0E3857B8B
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 08:19:45 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 0B0C340C6F7B; Sat, 28 Oct 2023 08:19:45 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0358340C6F79
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 08:19:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D1624811E7E
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 08:19:44 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com
 [209.85.208.52]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-125-E_GJaFZyMLK_wOoCTSk6QQ-1; Sat, 28 Oct 2023 04:19:42 -0400
X-MC-Unique: E_GJaFZyMLK_wOoCTSk6QQ-1
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-540105dea92so4237630a12.2
        for <blinux-list@redhat.com>; Sat, 28 Oct 2023 01:19:42 -0700 (PDT)
X-Received: by 2002:a50:bac2:0:b0:542:db91:9531 with SMTP id x60-20020a50bac2000000b00542db919531mr495313ede.27.1698481180605;
        Sat, 28 Oct 2023 01:19:40 -0700 (PDT)
Received: from [192.168.1.16] ([78.80.191.29])
        by smtp.gmail.com with ESMTPSA id s22-20020a508d16000000b005401a4184ddsm2518737eds.27.2023.10.28.01.19.39
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 01:19:40 -0700 (PDT)
Message-ID: <7ca9b9a4-66b2-4712-b649-cf0699b960ec@gmail.com>
Date: Sat, 28 Oct 2023 10:19:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: blinux-list@redhat.com
From: =?UTF-8?Q?Pavel_Vl=C4=8Dek?= <vlcekpavel93@gmail.com>
Subject: Gnome: adding own command to startup applications
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vlcekpavel93@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of vlcekpavel93@gmail.com designates 209.85.208.52 as permitted
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

I want to add my own command to the startup applications, but in Tweaks 
/ startup applications / unnamed button (add) I see all apps only, but 
the own command is gone, so my question is:

How can I add:

/usr/bin/canberra-gtk-play --id="desktop-login"

to Gnome 45?

Thanks a lot,

Pavel


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

