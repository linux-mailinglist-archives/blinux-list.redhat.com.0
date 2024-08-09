Return-Path: <blinux-list+bncBDY3L4PG5ENRBAOK3K2QMGQEZAECQDA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id A218394D917
	for <lists+blinux-list@lfdr.de>; Sat, 10 Aug 2024 01:23:47 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a1d9a712bcsf653060485a.1
        for <lists+blinux-list@lfdr.de>; Fri, 09 Aug 2024 16:23:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723245826; cv=pass;
        d=google.com; s=arc-20160816;
        b=bc3evwX8W7bu0eNGNLhg5Hdm11cl3zLJGAhT1MkNMuX4umDDiKPtpK2ko2gZ9nQIp6
         C63R9Zpj/F9LzQE3+NtXAOG7qNQ73c3jfeOhVadkgpXOEE++pPZqPalECUuVu2hbwPjD
         z4werJ8IAyRHgGk0Dga65tc8LRDrBAVDA+/XcMd+meZoejTje7295svTTTu0bns3W/T9
         MjZ8KTP3/03Zdinmchxvo1ff+EQ2wOL9oLF5VVh6bfVSQPEBAs2C9DTMenuktgMqPCVo
         LSMh3CLgu2EnHw6sus34FChd7qVGurVHJu2aTwbBnsUOoaFHNqCkpM6RnEd5ZoEB5/u4
         qDMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:delivered-to;
        bh=1vrJawA9hjPQk/yu+xAnshzp9R5PLkdxtOvgVyz5EVQ=;
        fh=3wesyD/q3VNCVTla3O0cYt1ugIHhotwckCHp4Idy1gk=;
        b=edfmPFuiEtCv7HZlMcdhzEdrg7UouOapDJYl5b+PtIOpONqQgxBPSLEnIMxEUMpSm4
         vcXt2BZ3PCJd6AQ698ww0skz6+wcsMAks+C9zPknsT+SX/asUY9Mb3kCM6nQj82o7nHN
         29iUjAxHvZYvNiGaBBtcrSiS/f/zhoryk9CMRd2JhzTqEsLfOKSjxwmt0EX1WP1amW4b
         vI+R0+WfUDYbD5fdfQATMQOWdHYe+DrJSoHGqWmGxvyUbuhr7iT2M0JjlYYI7Vkfd/ZR
         3clNo7z4PxDmvCOV/L1zlxKq/Kk7tnB4pJVevO8yJFFtwcKNfTglF2Z5x9kMyTSzaZRq
         0CIA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.172 as permitted sender) smtp.mailfrom=marbux@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723245826; x=1723850626;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1vrJawA9hjPQk/yu+xAnshzp9R5PLkdxtOvgVyz5EVQ=;
        b=siiCoKjR6MDO/MXIxOISqPFfgNf0OmKslUu5mMUDsLDyVv3RvHaJvWpCMhMB5lOPtC
         pdEc3rfeyWlsvmKABPuz4YNiWcfwHyruuWsf3fN0GxdKWAQf7qFdffoPLuin3Bw5bzTC
         FK9HrH7dAlvwUO43xj00y7H7Yv/M8bE8NEP3oCAMU5Jxc4hnOPd1fG7RxVJbLZySjRfy
         M0B9HbuWOGx6aDk6KIcn6ftxSH8ypGqDF82d/yjgFuazxoUUaSv8Z3FJ4+QgLuLNbt8l
         WBw4HiLYDDiGNVBgsHa52KEl1SgYNNj9EH7M3GoyJ06xKzqvvWhCSz8QwFnW9KEiF32v
         q+8Q==
X-Forwarded-Encrypted: i=2; AJvYcCXM7o/KzzhJzheK3dxVT+juvwcRAFjjmCVFVAE4GLrF3oTv0o9ss1Pec6uW/4tMzuQawbdVlea23ASyGlKcCqtycaNM43AZ34Qn
X-Gm-Message-State: AOJu0YzhGt9GIOiIyV+5XyC1FBbxBdymeyHHeZ60OU3nBv7Xi/OPGkfN
	NmHlQdvVxBwgd/nYGJIujAe/ARFkSEehRPmUomyR+1Q8zA7as7vqlmzKElWw0U8=
X-Google-Smtp-Source: AGHT+IG296mwGTy7HQoL+XoTLfAyT7DFiQNGz0y/L1NuQKFevTGVbFaTa46OFF+HqwCHPibdE9V0Hw==
X-Received: by 2002:a05:620a:d82:b0:7a1:c431:4b33 with SMTP id af79cd13be357-7a382519d68mr1147759785a.30.1723245825997;
        Fri, 09 Aug 2024 16:23:45 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1481:b0:444:f3d0:bcbf with SMTP id
 d75a77b69052e-451d10ead63ls42383911cf.0.-pod-prod-00-us; Fri, 09 Aug 2024
 16:23:45 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUj1Jdo5pgkl5zXZsYV8JtDUANX7TAyavg0xvr/urAsUYL4l6ZfxrB27PsHwyyjZTSFw/yzJ/6Kmins9hpLLfPgu00+c1T22kF0xwT9
X-Received: by 2002:a05:620a:bc8:b0:7a2:2b2:c1f3 with SMTP id af79cd13be357-7a382499357mr1085449885a.21.1723245824997;
        Fri, 09 Aug 2024 16:23:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723245824; cv=none;
        d=google.com; s=arc-20160816;
        b=Im8MctldacY4NyTmvLsJIn43IWgfWqsSCBwgawYSKt+w+uWTGKV6Jo5jBsWrPgowVx
         AbNU+zWUVg5imqzVBdIYvGFOLmEowClLussNaw8oZLONn0WUsMarM1OrPpz+/rr5LZoJ
         rhfmxWUctYHh1PQm/0Aunf8F0RQEH5Ub8Ob2UL8wdWjs43ifU9GO0AS3hvXcnqoIOg41
         3LDE5fAndBtsSyeW7EyLBJg+ynxJP0VAWxGUeNp5od34nMfY4m9qGLVEKmGXRU0ZfRKo
         dkCY2mqWXXqfkqQWoQzCnyD1/HKU1kSX/VhTHDmBE8l9Sm8TpjDmRV/2reFcl9PO965R
         It8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:delivered-to;
        bh=WjH4tKv8rOMxI+zWcFBYkGJAl4oNS2L9+oLbPcWvk3E=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=qn8yhR1K18b3mayVQ1Jv4jFFjc5HETj3XCd7PMi/jzCIVaiAGwSXIuTY4C2Z/1lEAO
         ekjvL4IPoUjIXhUPeVjnlP5kn6Rc8nDFHBSqCg1kA1L1DryD8XAqWjgHCgmAqBzRZABn
         dNJoOa8wJY/uvvSQ5bgmHS7+LflSsYUGSYv3C2Az48kz1H/vH4FhziryJo0P/ZAIbpxn
         MN+JzM3vtMqwVOVhG/cNxfW9ruVWBqAz/Cm5oPzMg9BK4QAvI+uuGpzvVP3y32Tq6NvG
         qW872mtR3tX5BjRuboVBpZOr6Sbwag0oYHxvGzbFndFZo0+Um6HkW9Pa6jGZ492SL4lN
         NfMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of marbux@gmail.com designates 209.85.219.172 as permitted sender) smtp.mailfrom=marbux@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4531c268e33si6516161cf.233.2024.08.09.16.23.44
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 16:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of marbux@gmail.com designates 209.85.219.172 as permitted sender) client-ip=209.85.219.172;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-187-rvt1NP91O_mIC972MXETYQ-1; Fri,
 09 Aug 2024 19:23:42 -0400
X-MC-Unique: rvt1NP91O_mIC972MXETYQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 250181955F2D
	for <blinux-list@gapps.redhat.com>; Fri,  9 Aug 2024 23:23:42 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 035371955F66; Fri,  9 Aug 2024 23:23:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F322119560AE
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 23:23:41 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3A53F19560AB
	for <blinux-list@redhat.com>; Fri,  9 Aug 2024 23:23:41 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
 [209.85.219.172]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-374-LvIk28QtPZ2MFczUGLktOw-1; Fri, 09 Aug 2024 19:23:38 -0400
X-MC-Unique: LvIk28QtPZ2MFczUGLktOw-1
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e08a538bf7bso2901669276.1
        for <blinux-list@redhat.com>; Fri, 09 Aug 2024 16:23:37 -0700 (PDT)
X-Received: by 2002:a05:6902:2289:b0:e0b:2f9a:55b with SMTP id
 3f1490d57ef6-e0eba87e13fmr2582235276.11.1723245816548; Fri, 09 Aug 2024
 16:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <Pine.LNX.4.64.2408091402170.4147350@users.shellworld.net>
 <CAJ1g4g9bP3RP-Eh6cXYgezxmEhbxEUQ+80vPwrXVQ-NHZph25w@mail.gmail.com> <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
In-Reply-To: <Pine.LNX.4.64.2408091752260.4153529@users.shellworld.net>
From: Paul Merrell <marbux@gmail.com>
Date: Fri, 9 Aug 2024 16:23:25 -0700
Message-ID: <CAJ1g4g9XWT9LpS_69mqzxHKQKOYkmyWbSE_kiwbG3d_=2snvLA@mail.gmail.com>
Subject: Re: taking a screenshot using either Links or e-links?
To: Karen Lewellen <klewellen@shellworld.net>
Cc: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Type: multipart/alternative; boundary="000000000000c19940061f486e62"
X-Original-Sender: marbux@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of marbux@gmail.com designates 209.85.219.172 as permitted sender) smtp.mailfrom=marbux@gmail.com
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

--000000000000c19940061f486e62
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 9, 2024 at 2:53=E2=80=AFPM Karen Lewellen <klewellen@shellworld=
.net>
wrote:

>   well..how would that save a file in a way to share it with others?
> print screen creates in theory a printed copy.
>

On my system, it brings up a screengrab program.

--=20
[Notice not included in the above original message:  The U.S. National
Security Agency neither confirms nor denies that it intercepted this
message.]
                                                =C2=AF\_(=E3=83=84)_/=C2=AF

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

--000000000000c19940061f486e62
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, Aug 9, 2024 at 2:53=E2=80=AFP=
M Karen Lewellen &lt;<a href=3D"mailto:klewellen@shellworld.net">klewellen@=
shellworld.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">=C2=A0 well..how would that save a file in a way to share it =
with others?<br>
print screen creates in theory a printed copy.<br></blockquote><div><br></d=
iv><div>On my system, it brings up a screengrab program.=C2=A0=C2=A0</div><=
/div><div><br></div><span class=3D"gmail_signature_prefix">-- </span><br><d=
iv dir=3D"ltr" class=3D"gmail_signature">[Notice not included in the above =
original message: =C2=A0The U.S. National Security Agency neither confirms =
nor denies that it intercepted this message.]<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=AF\_(=E3=83=84)_/=C2=AF</div></div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000c19940061f486e62--

