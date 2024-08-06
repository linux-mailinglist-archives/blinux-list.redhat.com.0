Return-Path: <blinux-list+bncBDYIZZNASAHRBZEBY22QMGQENGVA5MQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id D30CA948714
	for <lists+blinux-list@lfdr.de>; Tue,  6 Aug 2024 03:48:22 +0200 (CEST)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-709664a6285sf7077a34.3
        for <lists+blinux-list@lfdr.de>; Mon, 05 Aug 2024 18:48:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722908901; cv=pass;
        d=google.com; s=arc-20160816;
        b=N/R6fcLk+F8zA40SCTEdI+sbX2CS2On2sPyGDxsyi71HpJ98guuk/Z74do/oJ181iJ
         QGgEJdhvvjlduA1obR9uqGYqcqsvCS8fxCsgtU4rFNsoSte6RXFZ1cVAXbjwcaOzRxVe
         53yeO/nA8HtQKJlVCZkifqaGptlaUH5b+Gv66QF+EGtybzbaHuYGQSTu/b1u0c5Mx9tM
         rUJb/vfzf+GR5QgYzmUP3/tHHLaZIQ3+Kp7Cdp0Lhkt4C2qocOO+9dv/kMKKFf6M+mJl
         nKj1Hy8lCq+YJGXaRwZUkJ//rtYXTNAQwzC508LW4QBN4vwIF2XCyPGx9TpCCPqOkNLO
         kEUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=HaIxQhD5QA3vXukHcYTngYQSmHlRYfqzW2mWnNeJoSk=;
        fh=pPgLC8SDJ4zB5I062ceIfVf8gUgNYB1g4mlVXVjoViA=;
        b=MLroFxxBEhE+Zx81PAxNETX3k7pnd4rTJ/G1vQtuu+eFHurTiYJnnLBslXvx78VmQP
         ET/vromI8VtaTrZnOzFPR6mTwOiWi1SH7elALN77pFiQwKgROJE2IF9bvioAn/PN5Gsb
         q5apjpyJ1b3D4+6v12cUjjbUfFddVu55aHYFR7r7hzb/iYT3Jsjjda+/9CCVo+XP+BYy
         6oO9yINJoIwOPbezx0VVrhwUFoGbQn6YojDo50Ry8Zh4MQJRq2zXnnKW0vQIZti7736h
         lmgLavmpW7qME4x95/GjvorH4NyhNJ9d+vUTOaD+CPkP3EGlKLTVm6+1KuXAlRybKqe2
         yqnw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722908901; x=1723513701;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HaIxQhD5QA3vXukHcYTngYQSmHlRYfqzW2mWnNeJoSk=;
        b=vaMTwxPwPFalhhhdLllwmO7bSbGrsYBCAPCcv93kKNkY3MByDj/Cip+0ivYsxd8H4Q
         yhevNC0jFGAt3vZvalcR9d/qtKZhllZOgRTgF/OM97CuA2y6sAgFTptDmpIFf0OQxXoE
         zepKimjBJybD7qhivSE361vgvoWOlRaKnN385O8brjptMgbxkVzLWj3BtHhizKt8QL3x
         l6sg9Q9kGDKu+MWCj1SXYU/Y2YvmxNAb21DqhqMfEMjEoEqmEZE+nrSm8qKoGJhg5vHb
         QqA40nbqY6ZrIkYCHd6BMoWZBHMs3f1nUq6lNaFKcJjVSeQOzVrYwiLR/T2DzsbuYpEH
         jDfw==
X-Forwarded-Encrypted: i=2; AJvYcCUlrF/QxnEghaoiZV/5qf44xC0FS6Fpb73em2SjHewlSHee/mulj6uSVXA5PPdyLNpZqY17w9B93H/kpuI3d/cYcM79oUAC1942
X-Gm-Message-State: AOJu0YxIOiXDlgldPw4aSyRWWuZwHSVfwnzkwxXHX1c+5HCSf2IDWwGT
	ZLOiVePazi6HFvfGYBSJIJSbkp1+Sb4PKPaO/1OhXizgf+PWsKvP6rHBvAgoKCw=
X-Google-Smtp-Source: AGHT+IFjOL8xsA0L90nu8O5+IhxrQZs6R0+L8VI3yITxm6nggU4gz1/M/SYISrNGlLCmSw5BXy//Tg==
X-Received: by 2002:a05:6358:2803:b0:1ac:f349:9a14 with SMTP id e5c5f4694b2df-1af3bababd9mr1585306355d.29.1722908900793;
        Mon, 05 Aug 2024 18:48:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:1c4f:b0:6b5:a3b:a77 with SMTP id
 6a1803df08f44-6bba3307564ls61401336d6.0.-pod-prod-09-us; Mon, 05 Aug 2024
 18:48:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV5pBlZS0S/HXMCGZvxuDx6M9OHbhZFFtAOwq3Z4xI5wd8ilfb0c/FBEkuzEYmi4Vx/tqB/miVLsyD+VFDs7A/fTTXhmXY72UyK1CrO
X-Received: by 2002:a05:6214:4a02:b0:6b2:c034:6aa3 with SMTP id 6a1803df08f44-6bb9843ef5bmr190359766d6.35.1722908899718;
        Mon, 05 Aug 2024 18:48:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722908899; cv=none;
        d=google.com; s=arc-20160816;
        b=APpygaqxVT8aLBn8oj2usUs8iNyXo/GaMd3/Slfk3eMxJAmMF17QZjHkFnXDodNOGd
         V4Kl1AatEXh6lKOctgpA4yY5/K/+2uhQuJPaiATY/Zzbt0PX3TALJYVgkdIWQ/qUPIFC
         lYslJZgpAI+LHsXRBrC64GjuWACQ5bcSFY/gU2N9bYwQ+s9HPCy1ldv1z19UenrCw83A
         lKCWFLrvNGWdLixrKDoiw6Bem5lJkrjWhm7F0QBb7v6DaExYr0dbvFz0NOOVsCGV6J0X
         ouZ3lwGDiZP1y82VlKORomxeKSjsVhfPbPO1aW4G8DqhH0quYlgdCX44RgpZQeE+J4XM
         pPKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=5NGMticWn6Qofum2qfW0PPvBnFRNGXMSAayYXAx+gmc=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=w5KCiThpHGPt8sq9497ckocqRjl9zqN1AFD3MfDwsY+AEdlVxGuVDFYSj7I3iDbZFM
         LZwLokDAVP8WrdB/+0WsDBUmGtUow59R91iWDpL2DbiEXFeDRIPufOQRudjKYGLrg5va
         6ZUwF3D9qoMkKFef4odoCKDKQLu4cLUGIYnJqB0O9OCjTsfjrbKu+3jOX2xJtZR6CuR5
         RWJJ2gYoyo/tvjWzi5kyfSGHvT91tQW/x4mDuy2s5HwyGd/ZTWuw8valI7kWvuxS8TOs
         BzQFhomID9r3cGCgljEdrzceeUyvW6FKZ/UEI3sgPogNpLUVsqMfaHyVUrCB0978zRM7
         4xEg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.48 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6bb9c7715b7si106306466d6.77.2024.08.05.18.48.19
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 18:48:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.210.48 as permitted sender) client-ip=209.85.210.48;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-632-Ax6YZ2vHPAqQjdude2Rbog-1; Mon,
 05 Aug 2024 21:48:17 -0400
X-MC-Unique: Ax6YZ2vHPAqQjdude2Rbog-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A402E1955F0D
	for <blinux-list@gapps.redhat.com>; Tue,  6 Aug 2024 01:48:16 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9F1641955F3B; Tue,  6 Aug 2024 01:48:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9CEAC1955F40
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 01:48:16 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1D22219560AA
	for <blinux-list@redhat.com>; Tue,  6 Aug 2024 01:48:16 +0000 (UTC)
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-65-1w5-OvbPMi24S80vcPeWvQ-1; Mon, 05 Aug 2024 21:48:13 -0400
X-MC-Unique: 1w5-OvbPMi24S80vcPeWvQ-1
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-70949118d26so13796a34.0
        for <blinux-list@redhat.com>; Mon, 05 Aug 2024 18:48:12 -0700 (PDT)
X-Received: by 2002:a05:6830:6783:b0:704:470d:a470 with SMTP id 46e09a7af769-709b996d1d9mr23357582a34.28.1722908891286;
        Mon, 05 Aug 2024 18:48:11 -0700 (PDT)
Received: from [192.168.4.28] (63-142-95-63-142-95-216.cpe.sparklight.net. [63.142.95.216])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70a31eaf6c7sm3543752a34.23.2024.08.05.18.48.10
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Aug 2024 18:48:10 -0700 (PDT)
Message-ID: <9233824c-dd04-40ff-acdf-fbb26c6e1d2c@gmail.com>
Date: Mon, 5 Aug 2024 20:48:08 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Lios
To: blinux-list@redhat.com
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com>
 <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
 <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
 <2dfdde94-9d53-4fb1-b29a-308b0872dc8b@gmail.com>
 <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <37b6459d-957d-32b3-57cd-e08cc9101eaf@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative;
 boundary="------------dYiJWRVNnkjb0GkZ0DQqWUBD"
Content-Language: en-US
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.210.48 as permitted
 sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

This is a multi-part message in MIME format.
--------------dYiJWRVNnkjb0GkZ0DQqWUBD
Content-Type: text/plain; charset="UTF-8"; format=flowed

I am having issues with Lios, I am hoping someone can help me figure this out.
Scanner I have: epson perfection v39 ii
When trying to run Lios to scan documents
Lios sees the scanner but I get the error below:
Error I get:
	Scanner update list error Object has no attribute max_y
I have tried this on Accessible Coconut and Linux mint as well as Debian Bookworm
all other 3^rd    party scanning software on these machines have no issues with scanning with this scanner
Any help will be greatly appreciated.
Rodney

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------dYiJWRVNnkjb0GkZ0DQqWUBD
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <pre class="western">I am having issues with Lios, I am hoping someone can help me figure this out.
Scanner I have: epson perfection v39 ii 
When trying to run Lios to scan documents
Lios sees the scanner but I get the error below:
Error I get:
	Scanner update list error Object has no attribute max_y 
I have tried this on Accessible Coconut and Linux mint as well as Debian Bookworm
all other 3<sup>rd</sup> party scanning software on these machines have no issues with scanning with this scanner
Any help will be greatly appreciated.
Rodney

</pre>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------dYiJWRVNnkjb0GkZ0DQqWUBD--

