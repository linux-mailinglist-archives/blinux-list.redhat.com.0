Return-Path: <blinux-list+bncBCMKFVG4RQEBBQMYYG3QMGQEPPADGQQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC1197E28F
	for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 18:56:35 +0200 (CEST)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6c7b45eb015sf53026296d6.1
        for <lists+blinux-list@lfdr.de>; Sun, 22 Sep 2024 09:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1727024194; cv=pass;
        d=google.com; s=arc-20240605;
        b=IGF/2+hDja6yTWti9injZPr94g5DBH9z0qO6YARQ/SVt0s7KmfZT0RxD7G5iDDbSAP
         0lxT1EtGlPGfsYmO+uQ1nXEvjppNQgq3OCTAbniVeTUGLMyyL5D9XFRQrgkFRVzOc8Wp
         8KijToTSe8oJxpx1zqBCUty93jfAr82QMw4EMpOzuofSRabTpIv285tVb/G57xSxAo8O
         CkKrFarfKZjW+KnkmE3OqCkpbNd6gqin96tXks9xymdOaI7KqPtmMpjlondTnOehRM1x
         5S3DFzX6bIHJKEI1ReSa9LH6rohVoyLTcupWZ1iq5GMIFesfNkQExiE/oHO+BvwgW5WR
         Yqtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:autocrypt:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=omtYP9IGL1/TwZO5NmMrnXD6xdH0XiWIPWiFZVkRgPU=;
        fh=Uk/OV6X9VRDA8aVzW8NbeBvHEi4ss5ep8O/XpiNy+BI=;
        b=JqAe1pR40+9khaWL3Xro/cU/+wVjfMRITGioeX+GJxNKL99BDeK6wnwy63ALndYRcw
         /drE3Wpyn+hPYSfOW4hBPcluqGEFKVQJpDbY6tvwnFkHSxgYCQR4a/5cEW1tKfzEO3sZ
         2kMNS1ZwL+ve+yuwEBuYpmOoyFc+9dh8IJqxXhFidXfP3+g6IxL7+jfn1CnjTM0v20iA
         ubOCwm/faar30xxzVp/LDz6l795emHsTfhgoghloqUTRo7LcV5QVp3terxJZfu+NHpM5
         6kepxZQxozO2fiFShLOIomjG7K814+u80SBpxSE6rWJhyZXhybqmcCSa+eXVzUgIILyv
         32Lw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727024194; x=1727628994;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=omtYP9IGL1/TwZO5NmMrnXD6xdH0XiWIPWiFZVkRgPU=;
        b=GzN+4ZYlPoBMqWaXRCCED99wZTVGhvIsZa0m/2eKb6gXRlquF6IAmw9KARli8zab9A
         iVuBrbZ2lOsUJTLkcghRHJN9zyMOQMt0kR8LLp4cjAXjfEXfNxjVIHLifCMkqZPPdBFv
         LXT+pkMXLxGAKGlQY1PzhW1/LZaHy/63uJKhZxz8lr3Q3vY26bZiPbP4RU/ZYu/f1CTT
         nmcM9THcTAM9RQCJRyJzp4Iy7ug+P/R380EG/gRQh6A4p9k8ocu/jTCfx4DFcnJMYYXP
         /Of8lg2KwMpEtfuzJ20MQykHpMnY5auQOmnQEvsmtxATvF84sJ4t7ThdO03L5Enz3O6q
         ROGw==
X-Forwarded-Encrypted: i=2; AJvYcCUWqEvJ5fKl/MwEj3giSPlCRppk5bVEyAVHNXCo8RoLs8BIFEaUeqCR97TzzgkYQ0yWqZxR6g==@lfdr.de
X-Gm-Message-State: AOJu0Yz1ymklXFQmNw7xmaZ75uOpj0KjcN2gKIUpXYYIDaEueJfUgx1i
	MuI9kNCK2wIHugMPvVl0RaFT7qSK4YMJNh3g8jfRRhx0SJwPpDdHZoZdxnIib5Y=
X-Google-Smtp-Source: AGHT+IGOaqXn33mNQeRa8RTo0wbIu3QfWNjiZ+gem2NseYygflSUyDQHQ0Hg8DthR/O/fWnYg0AbUg==
X-Received: by 2002:a05:6214:398c:b0:6c5:50bb:d59d with SMTP id 6a1803df08f44-6c7bc7ec5a4mr138682926d6.37.1727024193850;
        Sun, 22 Sep 2024 09:56:33 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5f08:0:b0:6bd:735f:a702 with SMTP id 6a1803df08f44-6c6823b033els84171776d6.0.-pod-prod-03-us;
 Sun, 22 Sep 2024 09:56:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVinn1WBcefUU0IXAGnKjpjWk3hT9YKqX2U42BYZVDmhSndJxrjCtImhMu95ZjhC6WuM4AOOtYp+CzGew==@gapps.redhat.com
X-Received: by 2002:a05:620a:4503:b0:7a3:49dd:1f60 with SMTP id af79cd13be357-7acb80af565mr1385427685a.25.1727024192918;
        Sun, 22 Sep 2024 09:56:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1727024192; cv=none;
        d=google.com; s=arc-20240605;
        b=dNedjujUv+7yV7YGQJXH1yryWT7M/pTw09IdBJlKmqrHSbVJPbUzocJMfhA++RUQjI
         oYm6FBwbmcqJ1Umt6Og6PvZ8VHjy7rVJn5sHl4NjPTm4Cg/EvhHcIbzGoQRwC1bY4jF5
         1LEbGK1Gu09ryKdEmfeyL/sFfJT1oLMf0s3jdKUrGdhCH6Wnu69KGLRGMqrzLlCwq53o
         fTDLdr14LuCa8vmlvjAI6n6iqE/2GmBy7WetYtAXWd3vHU0ikbNWyHurE5B9hd2NYUBn
         gUfY9m/mR+j/h9x8Uv8cjDOCH888mlu9brEneyYufTsNq+PE5zRsiPpl0rI1srwO+Qlo
         Ta8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=U+z96uF8E5OYk+pY/Pjio5aLTw1wuBuE6C8DamoCv9Y=;
        fh=2uUlmr1/NOiYe4WvMgG8ByZhUttjw+615NrJ8iG785Q=;
        b=lE9uvh9kkVzqid/V7aSwJWZpiQ6UPGK/MiPnDzENFyKq9PVw7dTes/fulWhDZmAjBd
         o+U2ELgOnAsRue1Rx2KJqbXqEvPS+fMdrdX0AR0Y6QepuJoGk3R0rvHn1o1WCTSAFjgl
         76xoPTQx/2tVuWnSRWpY0jaYJlTNAEjizg2rCwiN8uDv/L8c72rPRd8foi8QMTT59ao1
         2rrxU95UloJ1btlYuU6/wQ/Q/q3FgSZCktBGTeGHgXW+CkK7ZzrQtcMbKJWUdgxBXxsK
         RZ3B8wrGpkSUBnwv/CW2i6cKhceDJ3Y8F6Jqw4vc02ucfdnIxbU/E/G82ufb6pYbmEfJ
         Virw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-45b178ed2aasi87594281cf.346.2024.09.22.09.56.32
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Sep 2024 09:56:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of didier@slint.fr designates 172.105.89.79 as permitted sender) client-ip=172.105.89.79;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-299-EHSnLKE2NZWd3FXfSdCkRQ-1; Sun,
 22 Sep 2024 12:56:31 -0400
X-MC-Unique: EHSnLKE2NZWd3FXfSdCkRQ-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8779619103D6
	for <blinux-list@gapps.redhat.com>; Sun, 22 Sep 2024 16:56:30 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 84A8419560AD; Sun, 22 Sep 2024 16:56:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (unknown [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8217819560AB
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 16:56:30 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E27C918E6A70
	for <blinux-list@redhat.com>; Sun, 22 Sep 2024 16:56:29 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
 relay.mimecast.com with ESMTP id us-mta-97-S235UZx-NAitlOPN-pv3wQ-1; Sun,
 22 Sep 2024 12:56:24 -0400
X-MC-Unique: S235UZx-NAitlOPN-pv3wQ-1
Received: from [192.168.1.186] (212-194-64-62.abo.bbox.fr [212.194.64.62])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 6EC0865ED5;
	Sun, 22 Sep 2024 18:51:47 +0200 (CEST)
Message-ID: <e48d68e3-f0b2-42fc-8ebb-b1941cd331e5@slint.fr>
Date: Sun, 22 Sep 2024 18:55:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: UMAI 0.5: Welcome on Ubuntu Mate 24.04
To: blinux-list@redhat.com, orca-list <orca-list@gnome.org>
References: <ab803beb-ce5a-4c30-ba7e-41e24594202b@protonmail.com>
From: Didier Spaier <didier@slint.fr>
Autocrypt: addr=didier@slint.fr; keydata=
 xsBNBFY6fG8BCADH4Hf/OaE2MwXRFMrU/9oDd+YPqR/wkhmIv0veDio84fsWA5qMz1De7TEv
 dNuxIVYTznuVOd/9lpdfxQ1KV9rgD7yoBPLmjbQA1vVjB+1QylIQUV0B9AYFUsxZP32Ic2pg
 TS3US/WiZyx+/jS50ri4kvT9iDtIEu7WBWFr8YMOoq3oLkHI8Y7gBG0WsK9XYN09glhtI+bA
 jLPr/ezwEg5M3FDb4U7XFq7GcA6EEzanKMAOHdZl3lta7dv5gpgdj+38j5jPfV1cJW+J1fha
 63X72xxXGs7V6J7NGpnW7SAKfTAMXsPXZwwGIuqMQs1Z89I+2ZPJPOoV8zMncTsWzHStABEB
 AAHNH0RpZGllciBTcGFpZXIgPGRpZGllckBzbGludC5mcj7CwHkEEwEKACMCGwMHCwkIBwMC
 AQYVCAIJCgsEFgIDAQIeAQIXgAUCYZVPGAAKCRDVAgLvYMA+6pOxCADB2pKmm/LgncWREzob
 Z6M+RsvgzvGS/48ik/E/TH2KyPO/hn+Fzbj4MmMwQdqz5YPfdBmkcM7WyDzkPaukzfS8QUvl
 VKyWQ92pqpbI/JUeShI+DLMKV7LZxiPinMBuKmpyLdpxuhk08g2+6F8X6ztbl8mbXQy5jcIZ
 zKQ442N0D4wnn8VXM0tb0uonmqc6ly7dcmkQ/GI7Q0tF/hkn4n3g1Lh6+K1jBqEIC9vn/c6X
 yf67ec+CwbE0GtgVM1FR1R0J1y/6vkYWr7gZHhnzgwKr6k1wzCGkVUyCSpFwB2oeANT9c0qP
 rgn4YjoYQIHS3vMWd630vRyOfqwetWXmVjPxzsBNBFY6fG8BCACqDQKHSw0ElDkwPPpNguL0
 ujOyygO30xlLyfW9pWOEycHSLhLzvDTlFkvr5IxvyCDBIFBdzpkeQqh1+ZxrFliwWyj+9/ro
 JlIjxeAyNs2xQZ7tQM6K5xtbUs8O5YtkCCO3OegAiLgmzzgxes79Qy+V3ciKbl+vrsNu7T9r
 o3zZhyinci1eOCcKEtXFPQW5P4woB+6+JheN9pIiDkjojmdC+xkvDadP7kJYKp19Itys/CbN
 vxEoOLsgeJhsZSmNU2QNhXkLfr7+AC99fb/c5ZDTNPRBqgLJCp+gTxn1QVJrAbq2OP3refmS
 RxdA3yUDMjxEeHwDNZJL9aEtTDlTzPk5ABEBAAHCwF8EGAEKAAkCGwwFAmGVT44ACgkQ1QIC
 72DAPuqjhwgApl0pdNIrbU+8Hn0mr3CTEXxPaTbAU2bYFPDiBaEvXsBGoz8xJ6EZQnywbC7o
 l5wFtVT08LKDewLHaL78zS+Q8rv5sNmWwzMAaipFtZg67e/rU3V5tw4E12nUghyMzQpngUur
 lZPMFlB9IZN9681cXuv2sZzAZlR2+3PsSAftpPQxReoSC7hj3dfiCiAis19G3A184HClA5MB
 I5heGinSz7R/AXhkiej8HZZzz9ZPkS7aeL8HsZKqCwZvViutbGmpm+V70JnbRAHLFjYb+Se3
 rdUWWAXcca4Ry8HCLTo5iK9xCTQh5gEuJ7ROdOXeY4SvMiqWjYhlrsR0qhTv9q/gfg==
In-Reply-To: <ab803beb-ce5a-4c30-ba7e-41e24594202b@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: slint.fr
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: didier@slint.fr
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of didier@slint.fr designates 172.105.89.79 as permitted sender) smtp.mailfrom=didier@slint.fr
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

Hello Ratislav,

I just checked: Accessible Coconut is way better than Ubuntu Mate 24.04 fro=
m an
accessibility stand point IMHO. It is fully accessible with speech out of t=
he
box including in the Arctica lightdm greeter.

Further, you can switch from graphical to console mode (pressing for instan=
ce
ctrl+alt+f2) and have speech there (using fenrir in their case), which last=
 I
checked Slint can do but not Ubuntu (at least not Debian) out of the box.

Granted it's currently based on Ubuntu 22.04 (Jammy) including orca 42.0 bu=
t
that doesn't seem to bother its users.

Maybe you could install it to check and port some of their custom settings =
and
installed software in your umai script?

Cheers,
Didier


Le 9/22/24 =C3=A0 14:31, 'Rastislav Kish' via blinux-list@redhat.com a =C3=
=A9crit=C2=A0:
> Hello everyone,
> today I decided to finally release my accessibility improving script
> <https://github.com/RastislavKish/umai> for Ubuntu Mate 24.04. I=E2=80=99=
m not entirely
> satisfied with certain things, mostly Orca not starting on the login scre=
en
> despite an explicit configuration of Arctica to launch it, but the rest o=
f
> things seem to be pretty okay. Plus we have the new workaround for Orca n=
ot
> starting after session login because of Mate bug (this affects all other =
Mate
> distros btw, like Fedora).
> Speaking of the Redhat distro, I=E2=80=99m seriously considering writing =
a Fedora
> version of UMAI. The thing is, the new Flutter based installer which UM u=
ses is
> something=E2=80=A6 I can deal with as someone who has gone through countl=
ess Linux
> installation processes, like many of us, but I=E2=80=99m not sure how con=
vincing would
> the experience be for an entirely new user, who, in addition, may not eve=
n be
> used to work with flat review and know how to apply it.
> Fedora has a really cute installer which is imo even better than Ubiquity=
 was,
> GUI-wise, but many of the things it requires to setup after the initial
> installation are likely to require quite a bit of GSettings research, suc=
h as
> figuring out how to activate the advanced mate menu programmatically. Thu=
s for
> now, this stays an open thing.
>=20
> Anyway, if anyone decides to go with UM these days, anything else than 24=
.04 is
> pretty much obsolete from accessibility viewpoint. So, welcome on Ubuntu =
Mate 24.04!
>=20
> Note: Automatic system upgrades to 24.04 are known to go bad for pretty m=
uch
> everyone, blind or sighted, I would strongly encourage a clean installati=
on if
> you=E2=80=99re running an older version of the distro.
>=20
> Best regards
>=20
> Rastislav
>=20
> =E2=80=8B
>=20
> To unsubscribe from this group and stop receiving emails from it, send an=
 email
> to blinux-list+unsubscribe@redhat.com <mailto:blinux-list+unsubscribe@red=
hat.com>.

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

