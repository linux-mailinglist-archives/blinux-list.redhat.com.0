Return-Path: <blinux-list+bncBCM2V5WE3MDBBFXF6CUQMGQELBUKBXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id CA4137DA2B6
	for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 23:58:48 +0200 (CEST)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6ce279b7033sf3326479a34.0
        for <lists+blinux-list@lfdr.de>; Fri, 27 Oct 2023 14:58:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698443927; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWlcSW2MWHmZzapu54v3waZ+5FUcBwBWcvZMpbFTRMHp6sxmcClU+PA/sBMpRQ1ycy
         ubUrhQfslFyoH3uZZgq8iT063H9iIhCHuWT3gpEGzZWdt7PaY3GJxQvY6OqF/r2rjdeR
         uaXbQBDqNSljK8G5xVD50ciaD5bfAXlBZ4X2qIPeRWQYb3sy+rTcKB4EJqc9RdeHayl/
         j2Gd3z6M2OOt+bKFWED0dMVwHINlvqtRnmdbEi4+GHSHgGQmjiiJlzXMDr8VF/Sa54Bn
         ZYIO8m97Jf7wMN8za27Cja32nRsNVnoOE/sixNX4LoxTRpqd3zDGjcmz6tIo4+ibfDwB
         ZAFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:feedback-id:references:in-reply-to:message-id:subject
         :from:to:date:delivered-to;
        bh=m9B5gU+691MQit5IwuIZ/G6Uwo4vIG8uyrXttyKsZOw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=gQEwdwgoTufCGFFGoSMAPdEcgcgtmZ0xsfQSwuT8uO/ZIlvizlQUjstjeKhs6KqRei
         pGQfqKedlRAZ9b63bPql1guTo3T7TPiO2rwBiIueP+CSJfMNb8Ca4qp9iqsWBBQpSxlR
         BhSCzd41iDTUcZla3SPBU1bg/z3u0elUJIlRavZ6DPkbys51qsMdh8yuKwKyjRsB4KT1
         Y2iJ4XW0K/mKtrNQk9QfrBvAwgYyUTHSmWS6s11vWYhvuuw71OL4fiifOVp1JUscO+84
         MK7J7ZjdmJ40i6MT7gkwUy8Mr93TUPtt2iXdkMx2pOi88izYc80WU2i+i9fC9/UtbeAP
         HXWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698443927; x=1699048727;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m9B5gU+691MQit5IwuIZ/G6Uwo4vIG8uyrXttyKsZOw=;
        b=Sf/fT2pLfqbvbVhq0sMjLsBVapsyyPvVHQ3ZCRaQRBhW9CVn1VZgXqeLobfsABI9we
         VAqtEoLVEKmPbXoE14FtkLSrEgX12F/B56iIL6Cxjkqe2MFqaHvhhNgr9SC2KwWiC/Pg
         BU/EhIHLIgvSlnT2LfYIerDJZkKgYeGQkChBGM/akMTmeMhSHkMkdiMYt5CU0QffiUB9
         BVqMpkj4p5i5c8o3W4BQlXOOOQ95dhVYrZRfleiNt/71+f3wg3yXAJ5qPHqp9eerOqZ2
         xaS3HAiDByo4LIWuTXUggrc6n4T4kf2lmmFJlUbFtnq5XlToQ/taeLQIfIIbu9LMK0h6
         w+IQ==
X-Gm-Message-State: AOJu0Yy3J8PPFQlKRLll0jmCDZ1mhYU+mSk2rn7cjrOgXCv56v2XWWkL
	B4aeJn3xrlGaA4cRs3I1L72lKQ==
X-Google-Smtp-Source: AGHT+IGw21vThA18hITUA1T8/94QXZr6ogFAH+Si/iz5OrFqbwLoUE8iU8UwQdj+Lnt6CKGRlUPRMQ==
X-Received: by 2002:a05:6870:1656:b0:1e9:90d2:f546 with SMTP id c22-20020a056870165600b001e990d2f546mr4651988oae.37.1698443927229;
        Fri, 27 Oct 2023 14:58:47 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:5a3:b0:1e1:5989:cb9f with SMTP id
 m35-20020a05687005a300b001e15989cb9fls2281825oap.2.-pod-prod-04-us; Fri, 27
 Oct 2023 14:58:46 -0700 (PDT)
X-Received: by 2002:a05:6808:1493:b0:3af:a0bd:45c3 with SMTP id e19-20020a056808149300b003afa0bd45c3mr4349306oiw.20.1698443926463;
        Fri, 27 Oct 2023 14:58:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698443926; cv=none;
        d=google.com; s=arc-20160816;
        b=y9TASh8tbh2HA6mSWbCvwARWsvbX3SH7u91nxNAlj7GqVYmr28dxXp3MoMil8b4Wv3
         r60pE7TLU1t5qOkQHXH+YALKx8602PPG7oWIO+dV3npaTiRo969oDF1j8cIhERTKuH+T
         CrqdmygOsjfy+6gpIFKeEHhyWn7pEkZFPck9bHJ2xIcwwT4QsnMMHx0Xw4/o6GaNPqrn
         +HkoMY21pYOFGTaMehK8ckJQHQsXM/wMquw+69D2isyvcC4A50pe7Myh3nDDCny0u0Vz
         xc0D3dcwocjA14nsehsQRd12KZ/rYmT6qPeEDa1MYeQlZHrGJaJgcvsFJzdGc3BNxAVO
         VkTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:references
         :in-reply-to:message-id:subject:from:to:date:delivered-to;
        bh=Ai2bneSUMkj+pP8Lp4llQU1zm+ITJkqlNLJPziUHdok=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=dumaRzuvLOIfXremRGVo+W1qpnNmFQHl0n80SypSXGNI+mT6DvygIHC+Ox/WgoClDb
         7c/4fdv6e3ba3bdSmfV91PnVd3H7h5IHXhRacdhRPu6Lr5PR5tKYchcgLEP39dbRzM2U
         SQTgtwVmY2h6YoNXBqfyfYwH/kfVlOqoGMdkKMu4Au60+GK+8HvysprHn+4ibOqXWP8n
         7jao7oJNFVXsTPemOI01aRY3p1Rwr4Viy4/3GdFy4rCzLMmdrccacTW1uoMUz+B//6Xd
         fu7SYIj8jEz+ZkEhqkDn+1vuoLi8XZvdy17qkdHGwXwB3icjPlMK31CHG8CIq2vQo/cP
         cCZw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id kk25-20020a056214509900b00646f2d31709si1337866qvb.178.2023.10.27.14.58.46
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 14:58:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted sender) client-ip=185.70.40.134;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-202-6ALNwmK9PKWTmwl-UXNkgA-1; Fri, 27 Oct 2023 17:58:45 -0400
X-MC-Unique: 6ALNwmK9PKWTmwl-UXNkgA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB0FF185A780
	for <blinux-list@gapps.redhat.com>; Fri, 27 Oct 2023 21:58:44 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E7BFE2166B28; Fri, 27 Oct 2023 21:58:44 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E000D2166B26
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 21:58:44 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BBA7E185A780
	for <blinux-list@redhat.com>; Fri, 27 Oct 2023 21:58:44 +0000 (UTC)
Received: from mail-40134.protonmail.ch (mail-40134.protonmail.ch
 [185.70.40.134]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-324-9nfz7pPkMGyPs62z-M1I8w-1; Fri, 27 Oct 2023 17:58:42 -0400
X-MC-Unique: 9nfz7pPkMGyPs62z-M1I8w-1
Date: Fri, 27 Oct 2023 21:58:34 +0000
To: blinux-list@redhat.com
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: OT Dell Inc. XPS 13 9350 Linux related question
Message-ID: <d46e3b4a-a554-495f-a8e4-185959a154c6@protonmail.com>
In-Reply-To: <ec2a66e8-9e7d-42ca-acb8-20b635478e80@gmail.com>
References: <ec2a66e8-9e7d-42ca-acb8-20b635478e80@gmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.40.134 as permitted
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

Hi Pavel,

personally, I don't see a reason for using BIOS, it's... well... legacy. :)

Some 5-10 years ago, using it might have had some benefits, since UEFI=20
was just gaining traction and not every hardware supported it.

But that's very unlikely to be an issue today with any reasonable=20
equipment, and, there is far more to UEFI than just the nice boot menu.


Best regards


Rastislav


D=C5=88a 27. 10. 2023 o 23:27 Pavel Vl=C4=8Dek nap=C3=ADsal(a):
> Hi,
>
> I am sending this mail also to Orca list, so sorry for off topic here,
> but I have a question, which can be related to accessibility.
>
> Someone told me about the best computer for playing with Linux, Dell
> Inc. XPS 13 9350. And it's really true. 8 Gb Ram and Intel Core i5 6th
> generation are really the best friends with Gnome 45.1, laptop is fast
> and absolutely silent, much better than my second laptop with Amd Rizen
> 5 / 2.80 ghz / 16 Gb ram. But I am unable to install any linux distro
> using legacy mode, Uefi absolutelly without problems, but when I want to
> install it with legacy, I get an error about something with waiting 30
> seconds for and error, not found. So my question, some Dell XPS 13 user
> here with Legacy only mode enabled? Or is it better to forget old legacy
> mode and accept Uefi? Uefi has more friendly and accessible boot menu
> order manipulation and that's good of course, but someone told me legacy
> mode is the best option for Linux, but I don't know, why. So at this
> time, we turned secure boot off, we also turned off the TPM and we
> turned off legacy mode. Before I installed Arch Linux here, I upgraded
> the BIOS to the latest available version.
>
> Thanks,
>
> Pavel
>
>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

