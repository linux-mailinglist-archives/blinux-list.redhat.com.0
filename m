Return-Path: <blinux-list+bncBCFJ3VNT5EIBBC73VTAQMGQEZFOUUDI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0540CABC061
	for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 16:17:51 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-476c2d1c582sf89814051cf.1
        for <lists+blinux-list@lfdr.de>; Mon, 19 May 2025 07:17:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1747664268; cv=pass;
        d=google.com; s=arc-20240605;
        b=CkkFptk34Q5c6RiH3QOPWdl2rz9/qjIqoSg0waJpyhtGannv/fCCQ+coONUHkQfNUK
         CkGZwYcDXSqq+dBCSeeVX8s/h1rtjLmgaLLY8G4CTDtL8A9kzEJOb2hV5KJE3DYnZo/h
         IadxnBSeI5W77EC7QAZAvVdFjz7MXfoYNz7AgaLurqkb+2M03dgB6tCZt4S+5MIUhOrV
         A4u4ec/sWapsezYyk1PkpZ2AqMfycIDC9t8eQB1FcjhsKHuBysV8DuomoJJMcr3NjwXb
         8qGs0Em7VT+MHF4V3WEfGX81nSgF7qBGqYApqXNwwp6ltCaYborXFBCAgUs49fvWcj9n
         eV8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=uuQ1axXhH9i4yXZUuTFlJt6GzGLShr5RirW73pHddoM=;
        fh=6s+j3eArleFh7FqUxwdKPn5V261yP+XLZ4MucUXommQ=;
        b=AcHnukCNBdIX2oyi0dxPcy+ILTBs51znQ5pTPS9XyPL/o0t1V27RcMs6LixBcoRj1Z
         /aEDyPLubFF0ALWmO16d1rmTVyVBueObPNExaVo9sWTn+kCK6Q7dr09LWWI3kCpHiBPF
         dn86zq2lmvCWq18NHMzdUb2W/EjpxrM49M4zK5Fzwgvh4THw6KXUBQBcGEKdrIz+Cj5l
         /Qi7dhWmE5iAlRmV6Ugigj4okhxxRX85oWQULUtyNWM9RNJKTuf4uu8FHcf25GM78hxk
         Lu99V9yWyDDhQhdGwKwIbU+Tk0KP/DF56R8M+DkmC0PI8sjn8gzpqEFA+D8bDppM7xA+
         IqwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.171 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747664268; x=1748269068;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uuQ1axXhH9i4yXZUuTFlJt6GzGLShr5RirW73pHddoM=;
        b=IGyuyB3mXotn2A/Ht5t0EMaWKlRiKfezjXZbfvcpef7yT3UZnmLHAKznuN8sYJcnMs
         XKgDWyRhvBNOJuVCCbg0+EyD9nbYUDVY6R8/Mmko2JlVjh4kcfhtFHLEunT7Usa+BzUb
         QgUP59zXkWkfL1Pt8GGrx/+zmUcxLJXEW8kRzZTSKSBYwsj890iohXCy+FXY26OgIIby
         0jwRl+g5TBqiT0fdMb5/HPtXn4ALuvVIz0F9MeCJj7deF3HJPIflBzaR9ulqNw5OZIDY
         xdT97LATqiApQTd19qvgbbLNJnFYLFryuFcQdGSmubngSo6rH0BIDrrnMZ5O2lrSw6hG
         S+qw==
X-Forwarded-Encrypted: i=2; AJvYcCX4z4SvzoWWwHTgcO9c2gJISwZNQd6dJkCjl4OrcGjH7kevCpddswjE9Ip3NcIIt3lX+CeYrA==@lfdr.de
X-Gm-Message-State: AOJu0YwF+Sy9yluuSrR1iNwGlPcvEke/LpmKmGhLhNQ+nmD5tisEvy+r
	y8/brhP3g5utuZ7ktKy9xK9Y+dQJdxBPwgdeZe45aP8Rg/oznrJ3aHUbTBnoDo1nKFg=
X-Google-Smtp-Source: AGHT+IFko1RiMOaeYd3UJVyLpsHLNjERXZlTAi1gqs8wY5EmTWoeqBE7Z2+hrFK4UwqUqrlI7QUqAA==
X-Received: by 2002:a05:622a:995:b0:494:93f6:8f8b with SMTP id d75a77b69052e-494ae4a266amr205320681cf.10.1747664268077;
        Mon, 19 May 2025 07:17:48 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AVT/gBHwjLt8MN/nMOfv4tEBGYYQ6eclP2frJN4NBaUS9FZZdg==
Received: by 2002:ac8:460e:0:b0:494:783a:3a5d with SMTP id d75a77b69052e-494a14486c5ls11273381cf.2.-pod-prod-00-us;
 Mon, 19 May 2025 07:17:46 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUQFLB6tVgr1/cHxD5NXKD/AfkuJxKkVvrMbPxZGKIn3OvOJ+lQNRBEYHDkXUfz9YM1udsghXcu9xgHJg==@gapps.redhat.com
X-Received: by 2002:a05:620a:2791:b0:7cd:1e1c:6a35 with SMTP id af79cd13be357-7cd39d143e4mr3112183285a.0.1747664266772;
        Mon, 19 May 2025 07:17:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1747664266; cv=none;
        d=google.com; s=arc-20240605;
        b=HY7A5WcPfgrkVL7hAaFr99OKfv7pdcVpTWiA+OXlwQ4uz4oUzPa/y35s37nZ4W2sQD
         HTPDLdFvoWT2CsbTagXDYSZ8BjKaWRcJCDMt3F3vgcD4/WX2g1eU3sT+rOL4y3DA0p/m
         /jT9pCvbGHYMN2VUnr2QtFtMhk8RQOEAiyqYLDfntRCFCaWE9QDjJv+y649MyPQ/sAzl
         sFGmb5J7nH+1k6XKhJVFXCNZwdIh2boJ7NkzQi8JBVNVkwRLpw28aStxP8bbhw1QtCZ6
         isDe9Cn6SBeETzzAP+oSpCGiHeF231uB75wsdZfK00eCX/7c/unHUybhkemVPBFEdiLD
         besQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=l8a08S6+yx9oX/hwN6m25hAvBRJI+fgnWilst/PXyrA=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=FmDl4S4CYXOFKQkW2nEBLMxNEok2SionoiMS4cVI+B4X356LlqbD1PNeUUg88SD7AB
         WUUHIfwGsHVSGl/A6y6g9EFpieyAUpB4yE38yLUFE/nrrasl7V8ZJz4f1UQtksNGXflo
         RHcnTAX1bj0qZ6Xbn98krzBYR85RY6DEaxzDPd5AE0XESCm4fOb3wG4so9vGBZDHlgZ0
         3K86W7tNk4Sgl7lfKUV7OHMN0VQ2tccGMuMHqPo7VpKusOo2AVNnKLQoNOvJJZW4lFiX
         5M2SAXbkn2MZWli181+emRZyHJNvfMbp3tCvbxCUJ5s5MnA1FWCARTTMwksecdOWQdOH
         H1gg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.171 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id ada2fe7eead31-4dfa6696141si3390293137.82.2025.05.19.07.17.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 07:17:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.171 as permitted sender) client-ip=209.85.219.171;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-38-j6OUfHLOMbOTwOdgfmF0sw-1; Mon,
 19 May 2025 10:17:44 -0400
X-MC-Unique: j6OUfHLOMbOTwOdgfmF0sw-1
X-Mimecast-MFC-AGG-ID: j6OUfHLOMbOTwOdgfmF0sw_1747664263
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 89C701956089
	for <blinux-list@gapps.redhat.com>; Mon, 19 May 2025 14:17:43 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 852711800DB9; Mon, 19 May 2025 14:17:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.90])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8209F180047F
	for <blinux-list@redhat.com>; Mon, 19 May 2025 14:17:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D121A1850F00
	for <blinux-list@redhat.com>; Mon, 19 May 2025 14:17:39 +0000 (UTC)
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com
 [209.85.219.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-597-kM38rxHZMxue7HW4njHBHQ-1; Mon, 19 May 2025 10:17:37 -0400
X-MC-Unique: kM38rxHZMxue7HW4njHBHQ-1
X-Mimecast-MFC-AGG-ID: kM38rxHZMxue7HW4njHBHQ_1747664256
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-e73e9e18556so4207552276.0
        for <blinux-list@redhat.com>; Mon, 19 May 2025 07:17:37 -0700 (PDT)
X-Gm-Gg: ASbGnctU6yZDFMdH+6mkOguoFZdhx7Mz/G1ltwdZnYeeb2mOzXLjIXMPJXj1LF5USAq
	tv2kcLIbmQ7xIruZmMwlQyaMqhst/Ey5jDL74S6TLC9kF1W/zOFQ3c5ZkHi9cEpibpm1BSEmEvO
	BX9adhR3Q0ar0WPwMf+Naxmjlgr5/mEUul7ehgfJn+k7BmUBZWGOkHL87hwwXcp0vyLDWyjW/aT
	lnLPSVel/kH1NKZpH7UVBbv7f5mF3E7cVrhjFeH8pbdbVs91SNePypPvWWuJe+xA3ovv/prhXbX
	seKWd2Dkj3AQDKVd0gkSpJbEDgTUXlpzVdBMZzdw24BFRbgXkjwvI+lHh4zVYcERGmxaaf2qIyb
	NzQisfirN
X-Received: by 2002:a05:6902:6c1c:b0:e7b:6c37:2112 with SMTP id 3f1490d57ef6-e7b6c3721abmr15720452276.20.1747664256307;
        Mon, 19 May 2025 07:17:36 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d126:c3bb:b4a1:6d5e:3233:3016])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7b6adfe2c4sm2697696276.55.2025.05.19.07.17.35
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 May 2025 07:17:35 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: external drive
Message-Id: <6F40900A-CA39-4201-AC94-4A8ABDFF938B@gmail.com>
Date: Mon, 19 May 2025 09:17:25 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: 3cIWUUzjknWrCVfwGC_jBttKNF_TJ6n4NRoG2t5z_z8_1747664256
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JcMykVLHtrf9zbg_jcEE3xS5J2D5xdFcWbfi1Cbl4sk_1747664263
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.219.171 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I have an external drive, formatted as e x t 4.
It was used to back up files from a fedora machine, probably fedora 36 or so.
Now that machine has fedora 42.
The external drive is seen by disks, but cannot be accessed.
What could be the reason for that?
Any idea how to access this drive?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

