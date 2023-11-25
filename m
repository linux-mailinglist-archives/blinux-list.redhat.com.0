Return-Path: <blinux-list+bncBCM2V5WE3MDBBMH2Q6VQMGQEGM77UNA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8227F8B2D
	for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 14:57:06 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-58ac3c313casf2318703eaf.3
        for <lists+blinux-list@lfdr.de>; Sat, 25 Nov 2023 05:57:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700920625; cv=pass;
        d=google.com; s=arc-20160816;
        b=UwXdDnG2lLCtbf2Ft5TPqDvFNHQtggjMiOYzzG4myL9m+e/yyHsilCNPmbMPicuZVx
         un+jPwb0VHwS2CCyF3dUiXoZDmoBfH9Op61122yqEBYoNarY2EFoEK21BhhD4ATY4Rgu
         FoSjftJHF0LIDo8xBf818+kai/o/gDT68Vzl0o9F4Aa5SXQSnjW47jGPT9OZ6lv5zIEN
         nA5TrNlsmM8DBenVvGcBYqFf6Ik3HDrmM8+WJMdqI/RJsF0Z9okd0rhhJWqYfiqKKgGD
         c2bAYtWZc/fRFHDjK4GyqYjPG5hnIM4LNd6U0uamaYDUlNCaKVEDW8FdMM+pNi6HLt1w
         DzoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:mime-version:feedback-id
         :message-id:subject:from:to:date:delivered-to;
        bh=8jOsOwm6wM9LJBLgVGG9cy8TmKrsdtLMUQA+4Of3m5g=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=dEacheJThsPQa9x+xPhnxaqg9EFkB09GsYwTtn5OBjeKCan5xaIiW00E6eN8BFGPhz
         S2VkOiM0ssnaYaidqERLCaV8ppRnup7mg78SxqG00Z92nJYiwbSAeSBgyVNAaxR1fIWv
         koIo5KygHQOHDBe/rtiG1735nfcLxEjOIQswSezaSEnZKa+oegdyWslygH9dzVGTAfNi
         AeM2eeyPq8KqLJRyCY5VwrHNJQ2OqdkmFHd9svG2izgpDg74ysKJj6usnYypGr/ndVij
         Ey2/jSD2il6Im/8L7/ICpBVwfslcRVGtjm4tQc4d9mdGbMunmmqT7LVlNE3uLGB1QB8I
         JVwA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700920625; x=1701525425;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :feedback-id:message-id:subject:from:to:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8jOsOwm6wM9LJBLgVGG9cy8TmKrsdtLMUQA+4Of3m5g=;
        b=g1RqASWBq6aDHLxPAD7aHo1XWZDkPSjUwYd65dyzLkzoTlyUNI+ldd3rb6/idjRxT0
         HLHoxmxA32NznlPgLtUpRJFWxXRXA0DfaskpP+xXx/5EDIoB2seeKEiXNoueoC+e41HI
         JiblwYIsVsoX6NOP/LP21f2fQQgwENjnGSqSo8PNdmNv1Sh/6Xp1x2pK40397/qrFGTB
         Boh8L6KWicsrHG85irqiv5fS6rw44xYRpU9AvGZubr3SdP2HqTwz+QBP3peGGvXOO6zh
         ADejeivgBvxoqHuxYKFPA5rVpO97z1s6fpVEboT4NjE7kaQ+zAFOKPpCCBqzC+emjRfw
         efwQ==
X-Gm-Message-State: AOJu0YwomIwetjZAvXF3px9n1CHhQQqFYgRerT9PrR38DBy+7/n53jaG
	E8IM3Bv1c7EqTc7r1J1dVOkiPg==
X-Google-Smtp-Source: AGHT+IEGHc8QLJlq92lOB0d3Pdl30V0YpEPI4qVVQbN+JfJdCSpJ/hEtuN3igk6eKaFKQ13bxTaNeQ==
X-Received: by 2002:a05:6358:724a:b0:16b:631e:5021 with SMTP id i10-20020a056358724a00b0016b631e5021mr6796768rwa.7.1700920625025;
        Sat, 25 Nov 2023 05:57:05 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1715:b0:423:8108:893b with SMTP id
 h21-20020a05622a171500b004238108893bls2328823qtk.1.-pod-prod-04-us; Sat, 25
 Nov 2023 05:57:04 -0800 (PST)
X-Received: by 2002:ac8:5bc7:0:b0:410:ab6d:54da with SMTP id b7-20020ac85bc7000000b00410ab6d54damr7239158qtb.16.1700920624112;
        Sat, 25 Nov 2023 05:57:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700920624; cv=none;
        d=google.com; s=arc-20160816;
        b=i/xhAIfFKlA1AwgdmhOJJUo7y1RCN51B9gaZ77qoVYlotqPx5vpvDXJrevZ48xRNNJ
         dwE1L3EMh7r+phKGE54e1Ch/cmkqEhoPMnX2hcvnQVhK6paZpCxOdd3oiCjU5NdoLIUD
         aNjoSPHUOOw5FwW/NTLM6toK6BzLSsDtcgiE6vz0G99pYJWwJWdMSFTwHrxZkEApMns4
         YnUd+65fvuiKd81iAnFlToRKBldB2sWj0ZsnR2oygLOLUR2HfQ3HPhlhPYIwU+pvb3oZ
         KB3ogpywKrSD4JC57BUM5sOkeglifeoD1s23PkGRFn0v3HQCbfUgkd2pq8sqs/pc/rmZ
         pDWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:feedback-id:message-id
         :subject:from:to:date:delivered-to;
        bh=wzoQoBdNL4ljcJMZ93yj/9G2wU9CLu/G1J6BLOttr5k=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=Rgshs8BEm6D+Vlaj9q0a/aGBjcYH5pDDRzG4MoYN9OilOPaiYyuJ6jS5pVfnsFsle5
         vnJY9HVtisJSoZTkZOFlA+6wQJP4PhtQIiY9psDZheQLhCowT1pC/PfeK90zboWw2Fid
         fEPK5UG4ZlwAbRFZgOsj0WeIq55vVN9jT0BmgD69+wZ9Hery1XBYp3D/rdNmtKcVlmIF
         eKfiM9Qy9gs01lG5+mvg2uj4/iSAMZoxSv9+59fxWJ63j1aS64W9Dy7mcG6m41mAnAuW
         uRICG+8SL821c4qnNsOYZ/j245anBJgRKNxIcu5kUKWXOviV7cQTCgplwxz/RNNgGe6l
         zEbg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) smtp.mailfrom=rastislav.kish@protonmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id t11-20020a05622a148b00b004237f54a7f2si5047893qtx.191.2023.11.25.05.57.03
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 05:57:04 -0800 (PST)
Received-SPF: pass (google.com: domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted sender) client-ip=185.70.41.104;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-582-70A_eEVCMMmPs9zZbv53tw-1; Sat, 25 Nov 2023 08:57:02 -0500
X-MC-Unique: 70A_eEVCMMmPs9zZbv53tw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 84B5B80C344
	for <blinux-list@gapps.redhat.com>; Sat, 25 Nov 2023 13:57:02 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8152C1121307; Sat, 25 Nov 2023 13:57:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 78EC31121306
	for <blinux-list@redhat.com>; Sat, 25 Nov 2023 13:57:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 57D9B3802AD6
	for <blinux-list@redhat.com>; Sat, 25 Nov 2023 13:57:02 +0000 (UTC)
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-605-__dFA2N5OO-m1Eo7-5ilMg-1; Sat, 25 Nov 2023 08:57:00 -0500
X-MC-Unique: __dFA2N5OO-m1Eo7-5ilMg-1
Date: Sat, 25 Nov 2023 13:56:47 +0000
To: Linux for blind general discussion <blinux-list@redhat.com>
From: "'Rastislav Kish' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: OT: VScan: Turn your smartphone into any accessibility aid you can imagine with GPT4 vision
Message-ID: <29acdfbd-9f30-4a80-a010-c291a86a5107@protonmail.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: protonmail.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rastislav.kish@protonmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rastislav.kish@protonmail.com designates 185.70.41.104 as permitted
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
here comes my next idea & project. If you can think of a system & user 
prompt that would turn GPT 4 vision into an accessibility aid, i.e. by 
telling it what to look for in images and how to tell you the output, 
and then if you can simply do photos against these prompts using your 
smartphone, then you can basically turn your smartphone into a pretty 
wide range of accessibility tools (color detector, text reader, expiry 
date extractor, navigator, etc.).
I decided to try this in practice, and the results are pretty 
interesting! Well, you can try yourself:
https://github.com/RastislavKish/VScan

Note the app has been designed such that it can be easily used both for 
tools creation as well as standard image recognition you may be used to 
do with Be my AI or my Vision project, or you don't even need to be 
taking pictures at all, you can use the app to simply chat with GPT 4V 
(the model has the same textual capabilities as GPT4).
Though note there is currently no chat history review functionality nor 
conversation truncation when the 4k token limit of GPT 4V is exceeded, 
so the app is not optimized for this use-case.

There are few rough edges by now, probably the most annoying issue I'm 
facing on my device is that Talkback shows the braille keyboard in a 
reversed position i nthe session screen due to the display orientation, 
I need to figure out how to make CameraX adapt for the current device 
orientation.

But that's mostly a minor issue, the main functionality works as expected.
Any constructive thoughts and opinions on this project are very welcome, 
and, if you get to create some interesting accessibility tools you would 
like to share, I would love to hear about them!

Happy Visioning!

Best regards

Rastislav


-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

