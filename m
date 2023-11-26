Return-Path: <blinux-list+bncBDM4LSNO5MHBBOE3RSVQMGQEJBGBDZY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mail.lfdr.de (Postfix) with ESMTPS id C60AB7F91F5
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 10:19:54 +0100 (CET)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-58a3be29c95sf4103100eaf.0
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 01:19:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700990393; cv=pass;
        d=google.com; s=arc-20160816;
        b=J1++7fUecE7epP+Btz/7zx5Dx+WC2NABNYDpiKMj+Vn4VRd89WHBP7C/fPnXRp1enG
         B7ZkGK/aCEaxIiWOzmJdkD1hq+vBkwZsJPEbce5Wei3xouwTX4gSNT+YRpZpq0c7qv4K
         y9RCYpS6hqhvOfm3jw9EAFUwIakslO0ejr8gMgisSB74c2W18VzoO45OpExMnHZ1PLNo
         2PdPIkqUI/qxghIS+uy+zOQ/+DtBikIH3lVrl2JfRGwzGxPC7hu2FEbJECZuMgF0qnRK
         2JD9fKKNV+RNfiKCbVrlmiJuJF7OEz1S+hVGagOIaF8d565ppXSvwb77O6a2xAfJUxJF
         odGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :ui-outboundreport:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=0Zy8G0VPdzsWU/GMdU1KC8+FGAD9dlKK+tg+xDN2PbI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=eGaqZg+VfPQc4vEfCJeA86m0hevkNQkwOMddhp9L8DS19xcopmPFX6UvC4mrBLrSTS
         M2UfyDf3N/bhbfzkc5uf9x/CQqcTkGGyEXCq+ZCHc/xiOsCPEIVVFdH8/zmZwSHa199f
         hLYt6CzU+WSdCAnt8k3kgYX1VyqQ7SA1TTrf0BnJ5MzfDTXNulxU9H7bVAv1ooFyYgOJ
         Bj6cR0XR5KXIVj9J3xVuam66Hb507C0LWzj6O3VE2hD67PE0kvFEuWICTetitetTbZR6
         EhZdqJnH0bnOk4LlE2WMCh3CAJoFqv3feteU9oiFPBypI9igNPmKGAH/So17ZPfcghHo
         q/Bw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700990393; x=1701595193;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Zy8G0VPdzsWU/GMdU1KC8+FGAD9dlKK+tg+xDN2PbI=;
        b=i6mVThy1FWyiypFf9ibkxF5JL9v6OMb4it+sPdVT7Ot3B7cNR1HQAdgbCtsRU1q1C0
         EI6jJylpIlBvpj/1HFoylc4T2UnXt6fzE5hMM85q8ldwC/urj0tzteslBsNJhvI9zcGx
         Osp1rTBR0/I/g954sQVmnPxKByE81kP0Unnim4ovzTrWWR66kCowIw8W2rXuCZe8pOFq
         qdhCRtMCmHWfyWFix0c9IvFg5o4zghT3JqIVSkI7c0V514IfPZ+nqvjwIBZc+AITbZig
         3YMGK/EmDVWXoLFR1X71PfKrzzo4MeuSPQ6MRBX31JI8rKxUOOI9fWoAk6DX+DKe9IlI
         sY6w==
X-Gm-Message-State: AOJu0Yy+uF5s8dZQfdGCKJ44tng2zJYTMOVYU1bT0n+IfSugkhZqzd5z
	h2PyUJUQwbvbIGGw7EOzwUm9HA==
X-Google-Smtp-Source: AGHT+IHU3ARUzCY/fVXJb5c9/14t4O55oW2lfBoAyWA7pzi6NcNgfmrHyhG0C2n4rgOy2g38KHZwXw==
X-Received: by 2002:a05:6358:63a4:b0:16b:cd55:b1f7 with SMTP id k36-20020a05635863a400b0016bcd55b1f7mr9786937rwh.6.1700990393084;
        Sun, 26 Nov 2023 01:19:53 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1c0f:b0:423:9554:656a with SMTP id
 bq15-20020a05622a1c0f00b004239554656als702165qtb.1.-pod-prod-09-us; Sun, 26
 Nov 2023 01:19:52 -0800 (PST)
X-Received: by 2002:a05:620a:2707:b0:77d:a0ee:f196 with SMTP id b7-20020a05620a270700b0077da0eef196mr1431970qkp.5.1700990392395;
        Sun, 26 Nov 2023 01:19:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700990392; cv=none;
        d=google.com; s=arc-20160816;
        b=XtBafvLVEf3kYQFoLWpGmZt9CQQT4SRTsIZVwkpdJv6i6KEwvBfQREmjjWFwQfLrp/
         eePJBp98MMOTLUCcxoFWyrvjmEK+QDo57klm9c6SgJtOcDygnFchM+mCepuV/REEeggp
         LoakCyRgizMHgVwYG93Sb3IenXPegtEylKItaeBSmBqOlETie+dP720Q67G92gHE517u
         c5Qpq9uXJArRiMtLnhXBjlBQnSfYrzUuKCX6dhOXjoKVOYOlwKj6vXSraf1Ml1sS+sEX
         IVpBOO0BzdbAUMfehju9Dz192z/3Av2DLW1vsZEAhxJ8g0N1nzzLqfO9ofYiliQsCBTA
         Be8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=HWOtz6tujPGSSGKU5CDt6xJyV7oSsX2E/La/uEnB2mA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=pr3DoKj2idF9XNILHFGTQEzteaQfPq8c0RvjJof3pS/G0M9LJlrM1PVaAdELbBJewg
         dskmbB1GcAXNEmp8dgdFE7wPDo9KnJEoNF0SmUwZKmT3YdWh/nlvsbSK2/D+1AhvtMHd
         JW71QlsAlbP3eoemgMDd9GFV2U5p1ruio8sXVGSvq9SeHs0xqtF9s1XaQxx9vwwe4y6A
         q/SPirfqu/JVp7TkLscasM7DjDmpU/ZnNgF81ku94uFsHXj9KeiVzO6mBPIqVptf7lRM
         DXQfYIaK0TgnZepUkP/wmdAW+en6/NRqBmd0o8g65PsEp8e1dnkYFVbrPa0sYzsv+Svh
         zjhw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u14-20020a05620a430e00b0077d68c53644si7030314qko.109.2023.11.26.01.19.52
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 01:19:52 -0800 (PST)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) client-ip=74.208.4.201;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-9-hKx-HHYwOuWaHLNi2XOgVg-1; Sun, 26 Nov 2023 04:19:50 -0500
X-MC-Unique: hKx-HHYwOuWaHLNi2XOgVg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D368B185A780
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 09:19:49 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D0B20492BE8; Sun, 26 Nov 2023 09:19:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C9725492BE7
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 09:19:49 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0DC480B4B5
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 09:19:49 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.201]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-500-zfJXStBWPtGcweU4e5y5EQ-1; Sun,
 26 Nov 2023 04:19:47 -0500
X-MC-Unique: zfJXStBWPtGcweU4e5y5EQ-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus005 [74.208.5.15]) with ESMTPSA (Nemesis) id 0MbOHS-1qqkNi2SKC-00IngM
 for <blinux-list@redhat.com>; Sun, 26 Nov 2023 10:19:46 +0100
Message-ID: <6bf8ba7f-791b-42eb-be07-b5ffcdbd24df@mail.com>
Date: Sun, 26 Nov 2023 10:19:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: EmacSpeak Won't Compile
To: blinux-list@redhat.com
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com>
X-Provags-ID: V03:K1:FPSfgtElcx9kH9wmoQyAzgAgQcH5rGXE1CzhYk+VyHcXPDwgt5U
 WywVdbCQsaHAmUu1xhpqxWmKX8Ddg7HldB+eIq132Hi7DGU1q0thw8yapzPbvqWDa/e8LPz
 lcvvRh+DD9BA5iVP/C09UA70bWuh5y8q0kUaiJhZ9k6+RXIUaV8W74KePuGnVUMUOiPG6ZK
 KqPJ4gpje8Y3yBFcH3tqw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:emyvwoN9Yw8=;B4reiM+ojjUESNyyzl95fekBkaT
 gDOzeQla6xDqX2u1K/AxAe4LJXTnTWJFMKp0WL3j4GobgLWpaMbkKlN0oyqOfgOtzWCIg+sik
 cX9FvFXsNpJoMnfvrvPPfOzHB7kPsFhtDD5k+N5szDCv3J3FEZnrS1V6EwKtYA4piYbE/TpQA
 OQpIJqxN8W8q7mW1VmbIAz+Vdp3LiT67q0nP0mBVAXNQZz/oUojdr0bvZdi3N8esBK5h3VPVx
 s49KPc1UmkxxvXN5heWMbzahiyEDKRo2QfKrJCAYLY3JLFyUuiyWusEMOwTMxLSKqN4FG3UGT
 zpBUWPdhlZxiaBjpl0bSjvLR+Ex954/fvH90VMzEN+xMjWdftUV2XJ5VpWXBPByV+9W1I4pbf
 1PenOeq+lG/Q5Q4q8Q0VAGoxy4ibAb0lD361rINwXGx09/phDGnCBlEnr5tAAjbE1pb1ZCj6h
 pFOpytsCbhzEYMQwTPQ0hLJ1B0NzL1gBMsfmCqWLZv8mqWDA3SsouwFitWpZfVz+j9eCuH8KT
 gmzLqthuP2DIeQBHNExZ+nMGL7YBfvKo7S3FfOGFJwQp8FmLM19tn3VLvMt/2s8Wwrnkp37Ol
 zaMu5NshQK3EJ7vwuhstY1Qult6voRk3+1XZEyiR1zY743h+j5eis0htJpxVnOKj65A3X4I12
 MYY2TeckOqT95X8fl1f+PW3QfSWaGuCaKzUbLLkJKqNVyYyjcQVes3TBCwm2v415AscUYw153
 sVktwPYFNm7VFEPGVj0qt0I+Qz/FRpMy+qD7VhA+BZbyv8wClJDgnpHPQTUownhGPs08Htjtj
 CfDQ3KsVlyrcWOVRBTsLj9Bn+TS4wrY0y98Z5t2ue0hlplAV02vDIDpzOef0WhLxQpKJag9oH
 FMKscpgconnZzZaTOjrc2pKfYettlk9Xxt1NNIbQLCeDkOVRaMutbijGrvz9bvIz1t/2T3kJE
 wurs/A==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.201 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 11/26/23 03:51, Chime Hart wrote:
> Hi All: I would like to try Fenrir with a DecTalk USB. According to Crys
> he has implimented support, but I must use an Emacspeak DecTalk server.
> However, whether we make from github or run an apt install here in
> Debian SID, we get the following.
> Setting up emacspeak (53.0+dfsg-2) ...
> Install emacspeak for emacs
> /usr/lib/emacsen-common/packages/install/emacspeak running in /
> Latest installed version: 53.0+dfsg-2
> install/emacspeak: Handling install for emacsen flavor emacs
>  =C2=A0 Temporary log file is emacspeak.log.eiSp4n

What do you see in there.

>  =C2=A0 Byte-compiling=C2=A0 (~0.7 min) ...ERROR: install script from ema=
cspeak
> package failed
> dpkg: error processing package emacspeak (--configure):
>  =C2=A0installed emacspeak package post-installation script subprocess
> returned error exit status 1
> Errors were encountered while processing:
>  =C2=A0emacspeak
> E: Sub-process /usr/bin/dpkg returned an error code (1)

What error(s) do you get if you run the config script yourself?

Issues on sid are expected, filing a bug might not hurt though!

--
John Doe

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

