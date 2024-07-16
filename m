Return-Path: <blinux-list+bncBDGI3AUYYYCBB7WZ262AMGQEP3M5VEI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DF1931F73
	for <lists+blinux-list@lfdr.de>; Tue, 16 Jul 2024 05:46:08 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4481c53fd1asf60184381cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 15 Jul 2024 20:46:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1721101567; cv=pass;
        d=google.com; s=arc-20160816;
        b=O8CumVZtcBUkvhb1wYRaXgRzqVCyQq2ZM4MmLwZZds7QgifeSmPcw8VuZ/cmlkTHEC
         jJ34Od3aEdyHw5rHxT2faXNkZANDEG8F6c+WNWJnLxAyIPQj2cJ5JwNzHPHYqlQabcu+
         X5FIvLPiYbQwHzc+PScbtCEPKmPkWjn59nrKUO7YUYKtN6JaiFS3DRtiMdejBH5ark2w
         eUfbwjISRysv2qrNUrv3pmDTTbQ9oambqKb27lsFofU3YiFygOJkY1R3g3PM3i5g1lmD
         UI/bePYJZhJZ0inNHxfrru4LKjyh8OrXT9vR8SJTndbJvr3SRjpFF6eeyTiQiAq0LAJL
         ubpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:mime-version:message-id
         :subject:to:from:date:delivered-to;
        bh=RkwlPgco2z0rClBz7bqEXZXWeSSQZN3sr6/JLVNxQdQ=;
        fh=UOyPSFyrhlFY8+K1vG+T+6KMen49/hV+e2N6kTebYY4=;
        b=k/VJU7ciql9xeGVNJIdBoTaStEYZUQ/fNc6vBEAwBRbshqfipQG4zkPHmtjRJvHZxD
         LZ7Oz7ZidrL9buGxuliu5oxI+hbY5uQpT4p2fYOHL4+Aa8GL7pZAvHvqNK1Hleiv363g
         w8rjA843ody7HA/mzC9VSTpqjav0+txcc5oVX2ml2+90m9eIps7FtX3YenafrZ/35Hen
         ZHe9dIPSEnbEqnehfTrjwVGfEnwwmSugKc6yhtUxhSorHBcJ+rjp9lAUUBkZ7jZ+qh+B
         puNY67nrou2WzslDd+ffMvhJHbnzDlmPlgHeKSsNoBGKRc/7y1B/V49x7LjSajYQ3JML
         zP5Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721101567; x=1721706367;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RkwlPgco2z0rClBz7bqEXZXWeSSQZN3sr6/JLVNxQdQ=;
        b=fyX2iAyqjbAccMavoduGr+MsG46vxZlZoOIHGRWnVLS0WqyRTs2rD/IoQBEGDk0VH6
         rWU6uu/D0GBBBwXMS8GIMQXjuYGp5uXu64wMjfQFqBC223YIhE1L0nhOSGBsO917OuU+
         +pwHaGvS9cH793/8vk64cPayyNCjRMMPHFge7tRLs3y4+G+0Cd98oRMKCUSQ16ciu4/e
         OuOZHXg905MqGvg4OVv9KsH/H9NwBYu6QWGa07HkDH5awWTuKv1On2cHYb1iivSdQ3yk
         Tf8sM+CdT6w4S0a7jtwyhWSzYfG2zfrnBSVsQzgdXCCVkRG+ypPonC3ojp0alcyenQ7K
         O4Pw==
X-Forwarded-Encrypted: i=2; AJvYcCXAa07Xb6GFXCKqUk6zQCQy2BJDwMpzlu1u0+j8Luamp6Tqvv27KCBvgN6yrb+tZJI/vQmIhql3UBOMHfv2y2dtGSrKwWPgS9lT
X-Gm-Message-State: AOJu0Yxr+4/DqIoS8RjazCmwcWEfL2B6yIEP8x09dQiWA1NW7krAqZoA
	zwZ10/qkSpuQ5XEQgPoudEkPGIfbMHLBSmBHx929pco9x2ETbtPH64IeHzUVsy0=
X-Google-Smtp-Source: AGHT+IEkDaefzGbKG6RR0wmt3T0ZekXgfVR/e3mmYQqU3+G2pm1CipAj6toahyb1FhiHYmxUMQbjgg==
X-Received: by 2002:ac8:5890:0:b0:446:6053:e47e with SMTP id d75a77b69052e-44f7ac3de42mr14225461cf.23.1721101566716;
        Mon, 15 Jul 2024 20:46:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7346:0:b0:447:e787:1d5b with SMTP id d75a77b69052e-44d03877480ls73066871cf.0.-pod-prod-03-us;
 Mon, 15 Jul 2024 20:46:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX/TXQL+2KM3DBfzX0mGycs71TCv/AostmB831K8x7JOsssv4SBOwvg8xBb1bSAIF8yDlQzb9OGUrMO/Zg5RpegPG3IZ95H109YzNnr
X-Received: by 2002:a05:620a:2408:b0:79d:6276:927a with SMTP id af79cd13be357-7a17b65e811mr115193785a.22.1721101565628;
        Mon, 15 Jul 2024 20:46:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1721101565; cv=none;
        d=google.com; s=arc-20160816;
        b=RTe+PymDhuVCzrvxImhrv9q0hTSHVg6yNC9+M8O4cOUPtEC8X5WjWAdw5HxsAX80UM
         6NnxCMuV9hcnoguKlt7yADrCRi98DNri0PWQ2Dwkzcoj2KSfWzJXb1tYDgqWIbCR1EyU
         keEfgJIbiOD1T8WET1N/TjV7fFhKe5cJMzKPaB3/lQ4Bvd5wEr8ZjyrZg244uLQzkbQM
         04iD2Ea7Vz4suzHSs0O0H5mCZiScWk4IaEXmX4NpYapGo1s6piB2bTCq78kwCPEMHiAw
         PmIFM+e5gfaMJFgMYk/salMk1ELlyiTsoiPMqnVri94D8AXlQ72iK7YAvkIgKwsNSk0i
         +iQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :delivered-to;
        bh=nG/c1FyjvoOtlU9ALczTXa72oA4/KZZor/qSSSweFhs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=z9JZGjkak/HOGFZ396V6G8jwTz4/OmVWy4l5AsYN1ZoCobM1YmtzhQk9I3tzVRZjhw
         n7fvkTfKsClQbmI1sGn30tMyNCFg22jp79/x9oOjSP9FsCDAxclcc6/+5SXHAUXeufys
         z6bi1xJGR/svStM8ZPqpslcVcDI78G1/zluws2Efnc88aHumd6TediDXkN1p+OSJpQQI
         5I4GgZl0nQrizgSvxBi0ag+bSEM32lnv9IhPiAB2jAdtrNanoYtDv1URAeMpK457j9vl
         c/9T8FRvX1Z0a0PRWAF6y2ET/DjEESUjJYounkNf34XilqZRiVbaGlZnxLLlFbCXuvpq
         fdNA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a160c91f92si633862485a.750.2024.07.15.20.46.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 20:46:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of salt@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-222-D7etp_m6MCq0dMyupevtRg-1; Mon,
 15 Jul 2024 23:45:59 -0400
X-MC-Unique: D7etp_m6MCq0dMyupevtRg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 5660C195608A
	for <blinux-list@gapps.redhat.com>; Tue, 16 Jul 2024 03:45:58 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 460131955D44; Tue, 16 Jul 2024 03:45:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 438AA1955D42
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 03:45:58 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id AFFBA19560AD
	for <blinux-list@redhat.com>; Tue, 16 Jul 2024 03:45:57 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-46-seEL_6z7Pbqwjl3YU6zKQg-1; Mon,
 15 Jul 2024 23:45:52 -0400
X-MC-Unique: seEL_6z7Pbqwjl3YU6zKQg-1
Received: from panix5.panix.com (panix5.panix.com [166.84.1.5])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WNQ2m1gG4zN3b
	for <blinux-list@redhat.com>; Mon, 15 Jul 2024 23:45:52 -0400 (EDT)
Received: by panix5.panix.com (Postfix, from userid 20196)
	id 4WNQ2m0tnczfYm; Mon, 15 Jul 2024 23:45:52 -0400 (EDT)
Date: Mon, 15 Jul 2024 23:45:52 -0400
From: Rudy Vener <salt@panix.com>
To: blinux-list@redhat.com
Subject: speakup and elinks interaction
Message-ID: <ZpXs8Lk1QKF-3nHB@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: salt@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of salt@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=salt@panix.com
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


I'm just starting to use elinks on my Slint Linux 15.0 system with speakup and
notice an annoying situation whenever elinks prompts me to enter a filename.

When I type in each letter, speakup will say the letter  followed by the partially spelled out word.

For example, if I enter the file name junk as the 
save file for the current rendered screen speakup says:
j,
j,
u,
ju,
n,
jun,
k,
junk.

This is driving me nuts.  Elinks is obviously refreshing the input
line after each typed letter and forcing speakup to
doublespeak.
Is there an elinks option which would prevent this behavior?
I don't want to tamper with speakup since its settings work fine with everything else.

Thanks.

Rudy

-- 
Rudy Vener
Website: http://www.rudyvener.com
Check out my latest story: Dwindling at http://www.starshipsofa.com/blog/2024/02/14/starshipsofa-726-rudy-vener/
Need a Limerick Fix? Visit https://limerickdude.substack.com

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

