Return-Path: <blinux-list+bncBCM2V5WE3MDBBFNKWOVAMGQEQJ7J27A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id D10357E6AD0
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 13:48:22 +0100 (CET)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-66cffe51b07sf9043786d6.3
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 04:48:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699534101; cv=pass;
        d=google.com; s=arc-20160816;
        b=R9BpNJ8NUUWmAm+zrl9u8er8lKjqz+whoAUqEYQp2mSi12TXWldivQ2+i2plPo6Rud
         gUxDAe0D2fz8n9gIjKi+fggKD9INio+JeHQX69kBHfmE68w/1kM7vRtE98xUzP7yyfc/
         H2dg/U4xdN53otx1FLwLAzMV7pxLQOiov9UlyuYiSCUlgkp9T3dY4DrHC0tb/ypnt+3f
         yfM58K8x5MwnVs6EEXfAkgYGurqwdJ//rbeSElH6LOjKOf9v9BF/l2bXoZlP+ooDvGqM
         4mL0Y4EWKp11S+Qqj/v38sLK5K4jD2hB6oz1AlE/5JydnppOOFQPInKM1yBiTH8hESWj
         CIvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=qIHyFs+/KSbOYI4B+qruW7+ZMVRzjW6/PomXSG8v3wg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GNgZ9b202k5OsXiTIwheVDoQll3Acv4DSLQpnsPT7YSpNDve8u/1U95Zde1IEfneQL
         rt8BmOL5x/a0QoEDfDg19bDc9TtPzhONmIDw+iwwCiWhIUdn5l8+4xeUHSMn+j68+qwE
         YNCVMIU12uulj1VjWkVnAw8GqsN6E71EHLa5eYw+J1SPqy4QsjRZ9UlK3Noao4ATBU9c
         Z024iJRaWiHP4s6hju1F/vsr76XYjy5XQdFGGJy75beNugi+TsWQ66KnFQDo4a7izI9+
         NNj6cgi3VyAu1pK/zUFIkpj36XEGPqHQNc94hL+ypjK9AuLbpnXtP8PNwL304iVfy5Z6
         GF/g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699534101; x=1700138901;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qIHyFs+/KSbOYI4B+qruW7+ZMVRzjW6/PomXSG8v3wg=;
        b=M9lGGfyplQd9XqHoZ7pZiYz7e+bAIfI28WXeffG6x48xxgsGgMzwA1uvzmyEQVFaJk
         5gXfOaKgzHl9YGPpvdoE0sREtAS67JjMMwy3Kn4czQ50q1TItNvQfRsu7SrHha5aSYRd
         DaV62lJRrSSEzfu/zmJI3wsmz7c1nkiiczQwf98EF/F0CH4JZUbNOdCfKI90uyg4l6iD
         /0Kdu2ohInvsU1a36v0GiaN19AEuCjTxDPgj/sOoslUgKcIvXnSpoPXnhpNL70M1K6zm
         BGKj6LcieK6dBNgjEOzBYcuIysM+DKSelzcpzhBv3/feeBK2+KDTOWHTpOqGt1D4uqKF
         fkCA==
X-Gm-Message-State: AOJu0YwvTGEQCQ+zpP8e7TEC3rPjanEuAEx1OfXN8MlrYTBhKtQQ3piC
	EJwLGEnIc5Gi42k8oibzlfXofg==
X-Google-Smtp-Source: AGHT+IHioZERD5QtzVcDRIua6r3OGtkl4LBllPrV+729K6TVD3ob4VTEhTNg4yFl0gMbuQv72Qd4LA==
X-Received: by 2002:a05:622a:1103:b0:419:5162:5e0f with SMTP id e3-20020a05622a110300b0041951625e0fmr5948757qty.13.1699534101321;
        Thu, 09 Nov 2023 04:48:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:15ca:b0:41e:89d9:f2f1 with SMTP id
 d10-20020a05622a15ca00b0041e89d9f2f1ls1212181qty.1.-pod-prod-06-us; Thu, 09
 Nov 2023 04:48:20 -0800 (PST)
X-Received: by 2002:a05:620a:4092:b0:774:30b7:ed93 with SMTP id f18-20020a05620a409200b0077430b7ed93mr5358592qko.29.1699534100425;
        Thu, 09 Nov 2023 04:48:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699534100; cv=none;
        d=google.com; s=arc-20160816;
        b=JYxma6Qn0Z0vzrts/JwkPx5CT3u8stz/66Cnk8G0aiHvLquzeFHSjxBEsPEkZ3+ePo
         G7bou9bv6BQ/s1vqBkUpaNlwpNzhgk5rvyibSpgjh95PsNqL/JYaJqMM0wIQFPFb7KW4
         XpakvdTFgCE3wCv302PSz3e79nfOWkXBgKaohPnX15T4tLNlp1KyTWLyrrLcTyQTRv0+
         3mGiyc/v8LsxwotNuvhfhlLUd+/TGH76/twozrLRynInLuAGQopvZob9Fh2pa92AfGGR
         QI0TYey0cbZ0g+K45rhkVMj9ZmoQeE2Tdux17aCrb9OUs0xZ0WJxGuTLw8kgtbHwyfOy
         ncWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:message-id
         :subject:from:to:date:delivered-to;
        bh=oCmHSiQpUyrfTS9N4wAc4/GYZ7JvjSsbH5OkgGU5qgo=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Jeh+Z7+mCSIuf7Kci8od1xiDSLQaGfAwyrrJBr1eCj2ezaWWz48N5oi0iW2PhvO1n2
         1Wykr4FLsICFM++emRLAZu8mAcmg7s4F89ldNDko88i+Fp88+FSdWGFEPd16scFuIHow
         whtnGttHmFg0Mwz1JnfXvR4ocvh84/Yio7dbtLvN4rOEDZKDQVxEzVvyChbdrg+Ilw2w
         Yrtub96iXGgvQWPas3t2SPfWSlOWYHaNwxl2DjCsbl/tAbYHOFac1/8HKf3SCfgU/SmP
         mABSGTuFV6zedxa5S1bCrev/VNwT9Ezjx3qdxwo/vELLfbBbk5KMrwAB/sJJ6voeyIGJ
         sMfA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id bl8-20020a05620a1a8800b00773e4b0d065si3029384qkb.532.2023.11.09.04.48.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 04:48:20 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted sender) client-ip=185.70.40.133;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-5-qfCXqHmDNjiS3Iwt1itjqQ-1; Thu,
 09 Nov 2023 07:48:19 -0500
X-MC-Unique: qfCXqHmDNjiS3Iwt1itjqQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F286E3821354
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 12:48:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id EF846C12913; Thu,  9 Nov 2023 12:48:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E8ED3C12911
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 12:48:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C98141C382B3
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 12:48:18 +0000 (UTC)
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
 [185.70.40.133]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-499-HeNYF-u1Nbqy0Er045A0LQ-1; Thu, 09 Nov 2023 07:48:16 -0500
X-MC-Unique: HeNYF-u1Nbqy0Er045A0LQ-1
Date: Thu, 09 Nov 2023 12:47:14 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: vision, get GPT 4V in your terminal
Message-ID: <3161637b-cca3-4215-8cf4-941897c92477@protonmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.133 as permitted
 sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Original-From: Rastislav Kish <rastislav.kish@protonmail.com>
Reply-To: Rastislav Kish <rastislav.kish@protonmail.com>
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

Hello everyone,
ever since Be my AI demonstrated the capabilities of GPT 4 for 
understanding the content of images, which is not a single bit less 
impressive than its textual abilities, I was looking forward to having 
an API I could use.
Because this brings awesome potential for various use-cases, though also 
for economical reasons, Be my AI is not on Android yet and I can't 
really afford spending $20 monthly on a ChatGPT + subscription.

Three days ago, OpenAI finally introduced a vision API, and here is my 
really simple, but working Be my AI in terminal:
https://github.com/RastislavKish/vision

Have fun. There is a lot to enjoy!

Note: Uploading images can take a while, though if it apparently takes 
too long, it's likely frozen, OpenAI is dealing with a lot of demand 
after their dev conference on six-th November, so chatGPT is down from 
time to time. My script is not very well prepared for this at this 
moment, I may add proper timeouts and retry options if it becomes too 
big of an issue, though I rather expect things to calm down again as 
things get resolved on the OpenAI side.

Best regards

Rastislav


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

