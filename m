Return-Path: <blinux-list+bncBDYPVTOXSQEBB47E7KUQMGQELUIK7JY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id A844D7DADEE
	for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 20:28:53 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-41e172143c3sf74047961cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 29 Oct 2023 12:28:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698607732; cv=pass;
        d=google.com; s=arc-20160816;
        b=bwTLhLkOxuhkE44PTeGF3TH6RWfMuCQveJ7TojwB3zdumiFzh772uABxRSKyueH8sc
         kmj+/Jsed/2qIp9TOuJLJ1qvioiDfJ529j9Uts2o3FpWbzsyBYXMRIF3vZaZxVaSpVjD
         slGgJYVojzt3KKTFNpR+XS4d0cstrg61cBrF66fS53NCKGaC5Z136+sOVRXJ9DxMYQHO
         qnnSUgEz1tmrau6NDk+vxBFRPHXmgBxwfN29BulJDqBW+zWKPRRO1hUwSoiPljqjUQ5m
         8DiTTzWMfqvFtA20GOuzSOWnuPSUB1QvcJRwdyLl8enbo83lrwFW+GnNirnUPqNLoIeO
         AIpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=kUMaUgm2V8ejf/9ZRSkiLuwgBw8Lx3LWPQw3C0kXjTw=;
        fh=oS6EXIHN5tKg4eWRzM5ctkFMITCs5o85+O7VkEhsn/k=;
        b=RFMyB8QsbQwODjBooIngtkUxUJpLwzpu9itK3gQvs7tUGoWJ0Iv/gwmIG35v7YPZd+
         fYp5PeWqfAqdTq7jPYS1fHSQfM5jJoOb1Qw7q2QUnpaoir0qHIQCvhDcx8gov986XfuK
         ExSriyKZA+0Aey2MKu0f+oGWPwx3vk6GOwOKfm9tVBAanl/aVElv5NOMm7M05u2ZYdUV
         4cKd9K8t0stoa1CJ5Ot6o+gYKB/tUFdULIsEPuxy5PDoW26wehePMmFpbFT1IdPWjJ0c
         7YipzO4CjjsLWwIouRZ8HBAqOFnapUXqdmHz6uxo/VJx6/x2/vHvjP1J+Gc6+aqpCHVN
         Q/0A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698607732; x=1699212532;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUMaUgm2V8ejf/9ZRSkiLuwgBw8Lx3LWPQw3C0kXjTw=;
        b=vDJ4uGe6UJ44mepfZF+2ggnzDhEUYUyhbI2y/7KyswLd+a2jThIA1RdKlucHtCdjjI
         cmNFbcBIM/aKCVUGgszXH65rgr1d4ZKdsghwu2muRXX7oozsQ4B3bOY/0vtVigIMuyLH
         Q7CKZyrhROnYo6RTIJdFh9l86RUPsepSVJXOA++z4w3xNQp3q4TuNbQjaXHgAS03cy97
         wtQCrQ11/CnCs+nAaSYJTcBqOr98Z6beyxYL3AGyFb6p9YrdHTLREQpyaG1oenuxlhvY
         gfg3rpklTIfCsRKunRkq/xXFInrn830hBc59eL7ldldlswXwEuu0kABtIv0cxUVUtQ+f
         +s+Q==
X-Gm-Message-State: AOJu0Ywf70NBh8lt8Bx+Zy9WykW4Ds/fbMoE9WEuYUKA+1Of4Xe92n/0
	77Ln/M7xG0Tnaxj19Gth0Jd2SA==
X-Google-Smtp-Source: AGHT+IHbZzACAbkjbyqICjtSqf56SLJSuqjHZnatfHz7tMKUZZFy63NDz/ynsal7cUwVazWV4B9FnA==
X-Received: by 2002:ac8:5b89:0:b0:415:1804:d9ee with SMTP id a9-20020ac85b89000000b004151804d9eemr17352893qta.16.1698607732037;
        Sun, 29 Oct 2023 12:28:52 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:510a:b0:419:abab:603c with SMTP id
 ev10-20020a05622a510a00b00419abab603cls3633640qtb.1.-pod-prod-00-us; Sun, 29
 Oct 2023 12:28:51 -0700 (PDT)
X-Received: by 2002:a05:622a:170f:b0:418:1437:303b with SMTP id h15-20020a05622a170f00b004181437303bmr15393405qtk.27.1698607731279;
        Sun, 29 Oct 2023 12:28:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698607731; cv=none;
        d=google.com; s=arc-20160816;
        b=zWkQ0H2KBMtfgE6M4G3bWEiWwPugwqsP0hDP3uLFpaNKSck8s9v+zt++YLC/ls8KOj
         ik7pYrhYnXlYNg31BQOkLCM9zBLyAI+3YLGAWDFSeM68FQqeCHqpDUcARSxsiNjyokWa
         fTbOp5Sgqx1NPZcyviUex8SMwesOL2FUlkU4VvJ13BTuVOJTU/dL/1+9pu4C1k1p+9M0
         uizQaqmatgUD3QPGFYMNqWACNj6IoBV9fr6YLfGXH5cx21/0QFaqiMz868cjL6hO03+w
         V6XdQ6/l+AUy7tHQxspKpThEePHeEavSM0GyfN33NjO8EUcGzVI/gT4ybw3QUqpOERGi
         XQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=OEvzrhDvYn5s/36FaqaIZ9K9iXcyeRhV75uc/C4cjOo=;
        fh=oS6EXIHN5tKg4eWRzM5ctkFMITCs5o85+O7VkEhsn/k=;
        b=dw7SaZPYnOGWNUE/LIm4RWKGyf9zODUPMoFa6iZiv5QfonWXc3BUXqeMm1HEEev1MM
         5AJsUAUNhnmHURu9zQkAbMZYkLg11UDUpnGTG2qQRlowB6tTA4C2BeLJyoCRYuK4CTQ9
         P8p5cyWTUUys5Eltq8kcra64ySd2xqJoNCBDtcAWGB9WazfzIWpl7Yi/iLOcAMub0sx3
         vluy8n/wFTBIMrbP2V/IbEM80UiIYQ07XUSUo68ZmTS1+xvZIfpGan2VDa5yafNCQdmq
         ZWKWTm/dymfVHJtqlU/80XkQTbJvvbZTBNIDV4Hn8Hel/jqYSzkgX3j3PxDl7Up6Um1o
         gj2Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id l1-20020a05622a174100b0041bb8037016si4481708qtk.664.2023.10.29.12.28.51
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Oct 2023 12:28:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-635-KaiYKXKfOBGA9U6vqfAxJg-1; Sun, 29 Oct 2023 15:28:49 -0400
X-MC-Unique: KaiYKXKfOBGA9U6vqfAxJg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 73CDB101A52D
	for <blinux-list@gapps.redhat.com>; Sun, 29 Oct 2023 19:28:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7070F1121320; Sun, 29 Oct 2023 19:28:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 67F281121319
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 19:28:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3A05D3806714
	for <blinux-list@redhat.com>; Sun, 29 Oct 2023 19:28:49 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-76-U4tFVa8FPreIYz_s6xOOcQ-1; Sun,
 29 Oct 2023 15:28:47 -0400
X-MC-Unique: U4tFVa8FPreIYz_s6xOOcQ-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SJRKB3fNCzPXY;
	Sun, 29 Oct 2023 15:28:46 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SJRKB3L2szcbc; Sun, 29 Oct 2023 15:28:46 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SJRKB3CwnzcbP;
	Sun, 29 Oct 2023 15:28:46 -0400 (EDT)
Date: Sun, 29 Oct 2023 15:28:46 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, blinux-list@redhat.com
Subject: Re: No sound after Arch iso boot
In-Reply-To: <174b8205-a316-421b-8665-5728cac92ac4@jasonjgw.net>
Message-ID: <7fd23c46-2234-649f-1e81-ddbffef8fb7@panix.com>
References: <55be789c-4884-46be-ac7d-42ea289ca759@gmail.com> <174b8205-a316-421b-8665-5728cac92ac4@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

In root however you get there did you do:
alsactl init then
systemctl enable espeakup then
systemctl reboot

Have you got any sound after that reboot?


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 29 Oct 2023, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 29/10/23 03:25, Pavel Vl=C4=8Dek wrote:
> > my HP 255 G10 has Realtek sound card and when I boot to the install arc=
h
> > with speech, I get no sound, so has Arch some script, which try to dete=
ct
> > all sound cards connected to the computer? I must somehow switch to usb
> > connected sound card, because I am unable to use arch install script wi=
th
> > braille support only.
> >
> When I installed Arch, I followed the instructions to install it from the
> shell prompt, without running any install script. Install scripts are
> optional.
>
>
>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

