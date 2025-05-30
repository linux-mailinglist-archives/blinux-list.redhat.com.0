Return-Path: <blinux-list+bncBCFJ3VNT5EIBBT5A47AQMGQEPC4O65Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E67EAC9292
	for <lists+blinux-list@lfdr.de>; Fri, 30 May 2025 17:35:46 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6f8cc1c047dsf35623666d6.0
        for <lists+blinux-list@lfdr.de>; Fri, 30 May 2025 08:35:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1748619345; cv=pass;
        d=google.com; s=arc-20240605;
        b=lfvH6hjwfAD/kykqiULeDOwPSIP7eg6FmtlvkK0VW3KzG/Z1vVzhLJI5hW5GAlPkXW
         uxbaBwi19F8zroKVvYBAeaXHw68wLlLU0mzCiH4Z8j1ySTjpXLiJ9fA18G2rRXrgTptx
         H9Dwn79F+f3WpTV55GjZ34EnrnpYA94wyFXxdCj1CmdbjRLrmFGA+cRDp0UYrfStMw81
         BDMRfSrGJd5dKdiwO+IYHU1IcdWS49vj/1EuXs/nRRO/dHLTtop6CYlBsgAFFQAfxKql
         JxvsguYt16WnGJGk7NE+v8TnB5L/CXPkkukeRRYaKXDXxGIsHrlw4jZyzeXWNb69gExn
         Xo5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=p1E5PhNIJfmmquKmb5Qsu89qy2T9jCo37eCY5SVHFqE=;
        fh=CHG4K3vzTNE4IZkUSLWZfq0HZ53wxKQnGz/CZpszij8=;
        b=GqI/j6yZyyxulvoylFxi2CnSfg9b6et2bjZuUruMizxDJ0f5b917lVIhtqhuHMxkhE
         RUSdq7SpySgPBhG/qeDOacODlB3xr3g4lA6nS0jscK905G5hx3+boepxkP7y/SimvK79
         bsEKm2F04PYLgvUlZm3P+a2xxKNHjmGWJou+TErNGF4VvUedyCLzVTkuPuCidqYk+S9d
         28OsIsZe6hXtfZ/W4ggMGx/BjNh5dUg/udjopf5gz7D2RyW6y9YszF/lGza/MdQ+y3aB
         FCPNs5Ria0X3uQXwvYvn+QDD3Fa1igOn+/z2PXY1NvdpZ3Su4dOxwSTnrs8QZ9oDBxav
         qf9w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748619345; x=1749224145;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p1E5PhNIJfmmquKmb5Qsu89qy2T9jCo37eCY5SVHFqE=;
        b=itgevgP/CiR20uWAaSRCjvytCY9tJW2jHhH3Dgbbq2Itq8xbv2cpO1fW4MHP1og82m
         MA2siDGzLAvZdj240NXI8ecRXfiljHVf2n58IjWjafzwG0EjYQl1FXb+YhdCsTBbZxrj
         aiBxWy4+qYAo1zlgsUXHUHKs86BSMCKqTESYTWXmaQ8bblTloDSHVgkrh1mV3UDgyoIY
         Y++O8ns9wLre9DzqluwYyTrygR+/+d3WDE80HeqW+1X/CCLpHHtx7JsvfGjNKrLQlr8K
         iY1Rp4wGX/lT4Mi1SqGdiMSdTgz5W1sSuJmp9+/ty3f5YCqxEyNM7RkY5ed/Qo2OdHb1
         qHmw==
X-Forwarded-Encrypted: i=2; AJvYcCUj2PdtdnmRuxDSnWe2+NtsRWjCcSC3Rd8AliGuEokyQSVsRuntgfdYfzUna2fhkMQ7GO8GEw==@lfdr.de
X-Gm-Message-State: AOJu0Yxa4IWJ3P0K25fvnJ86btMFBPIADuiQlvrWHedZcfANCSR6j7Xz
	QEPKgjKGlmeBzpu3lwjKEPeDYRGUDOCA+oGn8S2GefUccWtP0KC8JVO42EeLGenc+tM=
X-Google-Smtp-Source: AGHT+IHudw3wng1MxUj/EeDZIIxPYB67omh5mtKunOcgfRGfMzcUtw5C7iddj44Hx1Ahk/8dX7uGMw==
X-Received: by 2002:a05:6214:20ea:b0:6e6:646e:a0f8 with SMTP id 6a1803df08f44-6faceba0887mr73657696d6.16.1748619344221;
        Fri, 30 May 2025 08:35:44 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZd6qSDAyszYhmeJdPIkhBqIeWq7/Jrb/YlIvr6X2/Oi3g==
Received: by 2002:ad4:4083:0:b0:6fa:c598:5a6e with SMTP id 6a1803df08f44-6fac5d813a1ls38120006d6.1.-pod-prod-09-us;
 Fri, 30 May 2025 08:35:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWe63pEK4rtxGaEoMv45RAuqZMJxxvCr99v1iFe2vrgbFxbfhChGZakgd03ff2b2+cQwfBXkxx3x5TuSg==@gapps.redhat.com
X-Received: by 2002:a05:6214:27ef:b0:6fa:bedb:f619 with SMTP id 6a1803df08f44-6faceba55bfmr74939336d6.18.1748619343024;
        Fri, 30 May 2025 08:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1748619343; cv=none;
        d=google.com; s=arc-20240605;
        b=HH6yevy7FiINQ9lVHnIe02NJoe6e3JqZ4ZWs2yGhIf1NbPWXedR4lAq8cT+a2QigsU
         A6Qa/XxW8GDS0MfKLL//bKeh8OF4hu90a+dnqQ+mFpLSA7uxDFKnIGu+5+2y3yfWdD8d
         Ey96drmFOg+2AGtHCKkVvNsAufbNqYM5xl5rJDKsqqEJzia8ZL3j1A8i1A6m+AHYLGPo
         pakn62y3knAqpkgjiCnnLfphP6zv6Vj/CxvvIrHVEgeR+AKyvTaQWrCP2Ey96+nD7QJ1
         /9Wjs8nf6Qih9NoTMd4VlEaB21UrUXB7DviX8jxt29nY6kWOQ/IjKSfwZIFL/Gtu05B0
         WU1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=EKIfYo2gbLYYQtSxVAPL1HyVqdVmXQyk6gE585ztZJI=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=IL1WJUdYSU3E98TKbA2htydY2ddLOz9LNKerAjE3vw9pjKzQPAn4zRZQkdcsMqIT3q
         EMqOWiC6vLU+vWg2JES8fq3BQp70xr78Rld0Th59z9yxMT4f+PQJbrLJNiIYDKVAjVur
         dyTsviIWAS9xFiGFqlH4Z4FJCceBYXmlNKPtL/OtKc+k5BMmEPJ6+d9TSIa5VKSeM9/7
         aoHOAZSAcIIirClL/q2Im+qOEkueMphSi6xPDaEKM1FReMA5iV8VmPcOx5D6Dq61th9a
         y6BZt+lUL0lweDtguSIrGHeASPhBLMuVGceDOXonFghVUQ4mKL1ui3yzlLuj+J6wZE9G
         M+BQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6fac6e59a24si39967036d6.257.2025.05.30.08.35.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 08:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.219.49 as permitted sender) client-ip=209.85.219.49;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-195-BrGrbfEVNE6Go4p_D0Fqyg-1; Fri,
 30 May 2025 11:35:40 -0400
X-MC-Unique: BrGrbfEVNE6Go4p_D0Fqyg-1
X-Mimecast-MFC-AGG-ID: BrGrbfEVNE6Go4p_D0Fqyg_1748619339
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 737BC18004A7
	for <blinux-list@gapps.redhat.com>; Fri, 30 May 2025 15:35:39 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 528E0180087C; Fri, 30 May 2025 15:35:39 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4FBDC18003FC
	for <blinux-list@redhat.com>; Fri, 30 May 2025 15:35:39 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C3DF61956094
	for <blinux-list@redhat.com>; Fri, 30 May 2025 15:35:38 +0000 (UTC)
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-693-2AV7wII7PNCjcl1YjjcjEg-1; Fri, 30 May 2025 11:35:36 -0400
X-MC-Unique: 2AV7wII7PNCjcl1YjjcjEg-1
X-Mimecast-MFC-AGG-ID: 2AV7wII7PNCjcl1YjjcjEg_1748619336
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6facba680a1so18911846d6.3
        for <blinux-list@redhat.com>; Fri, 30 May 2025 08:35:36 -0700 (PDT)
X-Gm-Gg: ASbGncvuP2zjmuypwy2rMiqI9ptdvxQDNDDlQ6X5D3DWqNku1ke2WWU66bq9QW/1jF/
	xcWpiAIoYUkxJ/nGx3oTgCR022EWAZjQop/GBy23rYYcH/mDPQzbhR47u5P5jMtK0UC+xZAVcEs
	5SyzFJl2HLu/2A4p/P8wHwpnGWo4AzUGcRYl9K/I6pQnkYppmjMrwHEfaKRkQGu0rB5FcxH21wo
	CeCpFD2RHxMsPVMfRqxjv88CUhJjwDpTIDH8t4nJ+UcCfv9/mJi+QeAQPMvbIaV9RPxudlBeMpf
	k11Iq16/00mTUtx3Hjty0Q6SyATZlaxjxq5abETBIsisZS8E7Rg/okLkO15ejCzxhZi8EFQJQ/n
	CHTNhdM/hW4T8j9Y8FCU=
X-Received: by 2002:a05:6830:a91:b0:72b:782a:56d7 with SMTP id 46e09a7af769-73670a6004bmr2391945a34.23.1748619326040;
        Fri, 30 May 2025 08:35:26 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d10d:d5cf:5cfd:2034:49ea:c21d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-735af9bc8f6sm626106a34.50.2025.05.30.08.35.25
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 May 2025 08:35:25 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: raspberry os and mate desktop
Message-Id: <03C016E9-C13C-4E81-984A-BFA83005C23C@gmail.com>
Date: Fri, 30 May 2025 10:35:14 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-MFC-PROC-ID: sIO-UDB2Gpg1MeGQGl2CMCQRnAS9Mg6lyRS0CCJ-4HU_1748619336
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: U-0Gp_P68XZaB0bBtI17qjH94HW3yKOO4Z8JRFVxGZs_1748619339
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dcrone215@gmail.com designates 209.85.219.49 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

If on my pi 400 with raspberry o s using
sudo apt update
sudo apt install mate-desktop
how might I switch to the desktop?
How may I remove the raspian desktop?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

