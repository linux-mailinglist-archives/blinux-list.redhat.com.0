Return-Path: <blinux-list+bncBCFJ3VNT5EIBB2HC6XBAMGQEKQ5OR6A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C49AEA346
	for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 18:12:26 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a5af383932sf1629531cf.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Jun 2025 09:12:26 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1750954345; cv=pass;
        d=google.com; s=arc-20240605;
        b=MGQHB1Bl2PsPQioTdxQX7Wo3ipNHqQgCP9rq3wfnsLlT5LBymah/JPICMshL4sacPB
         F7DXVyQfPaLz2yh/foCB+4LIONq6koKyMT7CsQ8C9Xsxi+D4MLYocj5ggr/LaY8shR0S
         DvPeM28D0t3yirCcWG/vzijDxrRK7/Hl9Rq/z8SxLb3ZYPsTkRdeFvoOC7GSKlPexuam
         07mYED5asM82tGA6Y1LAhoMIC/x1gAX5cjYFE03eUCHd29PpQ5E/tJAB+nTawKtG451G
         EeHsMhCFePpzLnVP5ujeVQSEQcSlLc9xMyjfc3Vr5Rupy7hnF2yYVY5gCFJehDQcSheg
         CU4A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:date:message-id:subject:mime-version
         :from:delivered-to;
        bh=KKOYDeXSVYuKRyT5yI8A5wTbeanfeU4NWR7QdKYIBtI=;
        fh=q7b3TzrSM498JLcRm4meXQYBg+Naj6SEF/8Q+exae2w=;
        b=Xn9OekHzBtCf9mWJ26FdOsdBp7IilF5LAwdqI5mJSx3jpv/yy1y64S1quhIZsqEsNB
         1R3/Dj0Ny0vv7rfdoR0o5XxWC6heZSJ3Bpn41S6ptf6mam6p8jsTFVECmEpBdjJumixp
         3sJ4z8yadVOBdBY+vsjj964kbVUxcMafL8P0FJ/bFKpviwftNsmCgpVoemvsMKjfI7hB
         /lwJwKglR1S4ZHGB5L12V817Ayx/rXKd8tucHbOiCqKeOGExqaw+ppdk0J/HQliw3WPL
         QeJLIkuozAosANPGowEk0K/iVYNtWv0iruoGG6qpoJHegI/vI3LJmapGMr5jTQO3Ntom
         nuwQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=Zl6zT1Ke;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750954345; x=1751559145;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:date
         :message-id:subject:mime-version:from:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KKOYDeXSVYuKRyT5yI8A5wTbeanfeU4NWR7QdKYIBtI=;
        b=P4AKVMbJicMuePAM6NumNw2kuRRT1POel2jWpAfowAMl6WKM589H9Ae+BWQcm89N+f
         Kjqs9SIlxB01y+Mt7eFcQEwZFS7c7qxBtemEPPGTfZd8yrE24grMDjuAIeqdhz1EQ/Ad
         cveiSImyTQ4O1KCEdSAwaA0BNpkJ6P8faV8SLpOVvD+okT6n1ON3JINI5s37veV8mbAR
         0slfRV2goV7H5nFoMEuOMkkDsxKRkIPErneNkXzCjLzgGH6bTsvXOmev4pyAS9cu6K5c
         wLXTSVyaLcay0XRaNDQUDoLdw7ua/NUq1FFOE8HRlDDTEbeJebzBsk53ijc7WwN5vv7I
         V4JA==
X-Forwarded-Encrypted: i=3; AJvYcCWLW/zcV3WNzNjEx7rmC0/dzzd/PVsVzBysLOXGjwXNEZlS7s+txrWfn9QQkg9QyFJB2Ymjuw==@lfdr.de
X-Gm-Message-State: AOJu0Yyb7mWv/+hswydlrVY2sv6x9/yjSFmjVuRzHMnWb5RcMy0AP6BA
	04bOI5Zg4DV3lGqhlX6+mYulunHRaBtyUunROkYKT63r8SqrbyVc2BRxo3lKDx0KHEo=
X-Google-Smtp-Source: AGHT+IHgSDqk6Vjx7buw1gNicx7d45SIIkFc4yiM6uiO494l3hHXiccsNWfZ1xQ2EIXUx1jTv9+rTw==
X-Received: by 2002:a05:622a:9008:b0:486:c718:1578 with SMTP id d75a77b69052e-4a7fca067f3mr178001cf.22.1750954344587;
        Thu, 26 Jun 2025 09:12:24 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZczvL78lL1qw6QALglACJpAKER8DL1UDBuK6EqF7RJEIg==
Received: by 2002:a05:6214:dc4:b0:6fa:fdfd:65ff with SMTP id
 6a1803df08f44-6fd75156f1cls20985356d6.2.-pod-prod-05-us; Thu, 26 Jun 2025
 09:12:23 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCWsmYBHAC16OcdTPs3kYzjEm6RlKere9/0XWsoNsiyH3DJlTlJKj0E/2dWtTi1G3E+zvgkBKiHvoik5Jw==@gapps.redhat.com
X-Received: by 2002:a05:6122:3116:b0:531:4708:3d45 with SMTP id 71dfb90a1353d-532ef4d7665mr6645646e0c.10.1750954343546;
        Thu, 26 Jun 2025 09:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1750954343; cv=pass;
        d=google.com; s=arc-20240605;
        b=LhOdSOrM1T5K6oj2M59Mg467d9kx6Z8Ar3bQ5nfbSi9jEmJiOYGYx3IDQbnO9Teavz
         g04vJJhXjceT/9ImMCi9XfKQ1sx4HDrxz+OcJzWoU+URc4/Oij2Jil6Nrvx54mteQSLZ
         FRAKwUE5HSjKdYGaBcwMLMHto4JqWH87Wahwj6eVGXJ3fDeBzCBoC32gjqjBrwTgyXOU
         gT5JhaFI/mSpB8wk1iXaJsY4uV19FBZLpEN/tf8ymAeJblG1KQSUOfAvPpYfwIFVgYW1
         YOlhWwga4fUMcO1Kdkne/TdZUVFlXpI8smshwIiUH/NwSLL8/8W36girrn6p+hP6p/AQ
         tbjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:date:message-id:subject:mime-version
         :from:dkim-signature:delivered-to;
        bh=orJM+vzY3XVIuKsWkXrqFyU4ro8KVvmP52/+uAPYeLo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PGQ1fFhwPvHtpMfQ1UGf1gMD+IPGxWdRdKHX8g9YzSRqE/dRdRI8ioz4hM0UwtGr4V
         XXZF9ou4aY7OvMA//J5DAJuPGa/7n/x0CvDJe9XWjIG4VJna6fvdw5hUpyZw5lqe8Rcg
         nzwAu23s4CN+FN7ceb7FXETW3KuTNfoWj1lo9f3Dh28bq6q0uDh4kaa/pEPt9yFthLfa
         8y0vwoCL8W3sO2fmFFPMQnrvgiDGvwgOH8n10wBqZwYgJK4uc9xWt45jZ4ssBDC1t35V
         aSvc2DsFVZEE4Sm5N0suQxVFyiuErGlVBklQvj5Bc487OC89K6ZWeR3qL3UN/Fglzeu1
         xGKg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=neutral (body hash did not verify) header.i=@gmail.com header.s=20230601 header.b=Zl6zT1Ke;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 71dfb90a1353d-533092dc0acsi155251e0c.181.2025.06.26.09.12.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 09:12:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of dcrone215@gmail.com designates 209.85.167.172 as permitted sender) client-ip=209.85.167.172;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-248-uAX_ikVcPD-SIOfAGfFx1g-1; Thu,
 26 Jun 2025 12:12:21 -0400
X-MC-Unique: uAX_ikVcPD-SIOfAGfFx1g-1
X-Mimecast-MFC-AGG-ID: uAX_ikVcPD-SIOfAGfFx1g_1750954340
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7871D190FB60
	for <blinux-list@gapps.redhat.com>; Thu, 26 Jun 2025 16:12:19 +0000 (UTC)
Received: by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 706C11801417; Thu, 26 Jun 2025 16:12:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6B9A81800287
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 16:12:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 918C719373E9
	for <blinux-list@redhat.com>; Thu, 26 Jun 2025 16:12:14 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1750954333;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=orJM+vzY3XVIuKsWkXrqFyU4ro8KVvmP52/+uAPYeLo=;
	b=OLPHaSIshM2pEUGhXoOOm4wWGqrEMQcagG8SfcSlfpuVLw6XZY+GbxguQqKpAfmNWWA5xc
	y80dE3m5R2LEl1JZU1j2Nuuc3C9Twd3oeOcmOonB/D/Lh0CWZ/IankydNzVasX0CuicRt6
	cHLFNk/hnq5JWg02l9wAyNUxl1sKKlsVhAZ/AqtUvBvnGEi1NTnqOGCCBd9yUgHLiD0NtR
	9lvkScRsgH8cu9cY2y7EuZR1OiXfq5H+jKg/yhsU5uTtl+lhYTvqVQBH9QgHz+y5CpwbOI
	OQBluFZlLazIMOP9FDQGU1K1jKSrZ6fAplGZw1FwnGxX1s/nQVBZLFqyydSFQA==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1750954333; a=rsa-sha256;
	cv=none;
	b=h3d5WyFIjvtVIFVeRtaRMqpPwXL2zTDS+DTFmW/76tBD0rrISWdwr6OEWak969IDN0GqXq
	OPyP+DwhWoLlgOqZ/blwCKEjcKN0Llj/5gVChoWzkVpOyReFwck3hOrsmFD6+2usR2Jl4e
	Vsl+05SubY6/zOUWJxrpzKezXuLq/q+L5d2qFWnoH/fU+kRZBa1BZTDCkqoXUZbs7aHpTQ
	oQCsBdzRFGogF0VjPFrnX4QN4iBn9ZDZj6uj6nNhPQYxyjaYBwJLzo1qmqqX0tbB+FBfEs
	eAFpsaBWROHbA/pWxYvKEoe63s1VKUsYyxtvp9mUvGKBji62k1RTi2sucBLZAA==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=Zl6zT1Ke;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of dcrone215@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com
 [209.85.167.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-222-mlxqRD2kNI2f0elrcnUAww-1; Thu, 26 Jun 2025 12:12:12 -0400
X-MC-Unique: mlxqRD2kNI2f0elrcnUAww-1
X-Mimecast-MFC-AGG-ID: mlxqRD2kNI2f0elrcnUAww_1750954331
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-40a4de175a3so792568b6e.0
        for <blinux-list@redhat.com>; Thu, 26 Jun 2025 09:12:12 -0700 (PDT)
X-Gm-Gg: ASbGncutZUUqRFrbv6vgShw5kG8WjfMCh4wwQIwusmK8upLqQZjpU7FgEHWbBrhSgn5
	5teukSBEX1mwDdR9eo0QSpsmHtXkxQjcPc66fY/jWJ09FtD018yZql3esHzU7CAdXf9MXgXCVkn
	kzA4HFFpWPGmyibd2ybMMx0nWD58fHH66Z4HMkp4evrQNc/wNSuXn1nU7pUBngWWkBShBzdQ2XT
	umCeEX3CPv5XE8r8giSvEZtAWMoXaQGbEG341GEoo2d1EBs87ZjubnV6uCVjBt6b0q8S+6tXZNW
	AiuDy2vkRYchw4m8JTCdyxTjlYL/SvRta8ihzSExJlNid3fVUSS1NGpwMATSiCx957buLLXx7e6
	hwAh4nQ9f89WBuUcw6EI=
X-Received: by 2002:a05:6808:4f68:b0:3f8:3eeb:11a3 with SMTP id 5614622812f47-40b05740fddmr6223255b6e.11.1750954331153;
        Thu, 26 Jun 2025 09:12:11 -0700 (PDT)
Received: from smtpclient.apple ([2607:fb90:d199:cd3a:880b:1875:df01:d114])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40b32288d4csm17172b6e.10.2025.06.26.09.12.10
        for <blinux-list@redhat.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Jun 2025 09:12:10 -0700 (PDT)
From: Daniel Crone <dcrone215@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Braille Blaster and linux
Message-Id: <8775841C-4F73-4EE1-B8B6-2F5DFE0E9ED0@gmail.com>
Date: Thu, 26 Jun 2025 11:11:59 -0500
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gz0i2f_6U2-0eHKw3sX7f4r7SJKXy8HxryVY48f83Bk_1750954331
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: text/plain; charset="UTF-8"
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Original-Sender: dcrone215@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=neutral (body
 hash did not verify) header.i=@gmail.com header.s=20230601 header.b=Zl6zT1Ke;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com
 dmarc=pass fromdomain=gmail.com);       spf=pass (google.com: domain of
 dcrone215@gmail.com designates 209.85.167.172 as permitted sender) smtp.mailfrom=dcrone215@gmail.com
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

I downloaded a file from brailleblaster.org ending with .tar.gz and then went to where it was.
I used
tar -xf file-name.tar.gz
then checked for a script file to run
./configure
but found no script.
The were the directories
/bin
/lib
/share
Without a script, I would not be able to run the 
make
command.
How may I get where
sudo make install
may be run?

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

