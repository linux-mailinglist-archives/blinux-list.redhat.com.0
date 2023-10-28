Return-Path: <blinux-list+bncBCLPHQH4XEIRBZGP6OUQMGQEXC5DEDA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 655EA7DA695
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 12:52:22 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67012b06439sf12250096d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 03:52:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698490341; cv=pass;
        d=google.com; s=arc-20160816;
        b=YPtXy0KsO9kUPj0z1DzrPwnyirqZea3DPINmdjfbTDfE2G9YHK4uuclVTiKMPBLQYd
         9CGPGvYLRYqZHM+0yQfQ4Ahl6YR84a31jes3OsocbtPDeYDqQVR67HhytzrGLFYMCubs
         JYCaF2yR0jxwzgK5gB3uYEqyhF5pyxIOIHGkPh8Z3pZAVxxxagkguWCSC4EHytt+NfDs
         H6xEz+cWxNqzQ3H0e1GIU0f4FXwWPXT1sFC5wuu6RNK8LU4Dt2wfz6tahJoHxY0HBtTi
         b7bjddLUWTG2tuAOdyt5Mu/2pe44bAQeb+47ZtOaOPrTQJqqhwjGj7gGsRav6mnxSF9i
         xUHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=38RYA2fLbA0RmXNKoejk0POeJkFrcdirJhvEaGoiCSw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=sQ+Tf2OMswAmPPshiF0X+bbubIqux3f011c7Dvt7j4T/aoyU26sudjRqdBbOQVVm7d
         P0Ee8feJ6wyxxTj1fIo28dYvjhj51bJo5mYkSwX3R58Stldma2e4iP+HFuraKfSdKhE3
         8lqVefbwNgkNSalUOTIqEZy7apgaCobSFH8tCdn47KHs8eJ9qdAurSfkmt0OjOL5EQ7j
         NKZLU3I6Fy6mKXLFzJjWcjikmnRnhjvQyaUIKc8f8S99mu0fPsS2z2aARTi4l4hvq/DW
         c9ImD7BRCkhz2sTs9heaNWq2j5p7OHhUdGyHvw/qO5hG4gJVqQundLdwqnSylVbX6nsi
         GEzA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698490341; x=1699095141;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=38RYA2fLbA0RmXNKoejk0POeJkFrcdirJhvEaGoiCSw=;
        b=p27NKwNMnjryI83sqpIf4Ct9S4OOkcUO5sYHmT3cskV99EgDcxBUTWC/Hyz1fuk2Li
         2bE54V4lf+W9vfHZLpn1PRuK14eQ+reXsUIkTB84Cz6fkcpFUicD4TD/z7W0eJPp2TkS
         0idP8nuHV3e9S+XMQQjC37gY6cYXDCGi576UR2UAccfg1sWnGAcx4iJ2FOyQgX5Ikcck
         PmEP0gY61KGPu31zooC/8WPohX1tG/hAUAKdk4uDRapJhH3LuTfONrQm0EQ7S4kfuGEf
         OX4zr7Dhio77anDL5ASkeaI3S4bEri+LCbTO9WDc7WkJSof/eW+NbSz/xGpja3bdtWCD
         QXeg==
X-Gm-Message-State: AOJu0YwnG02TNq9CW3rAuJDeqWdOjnvARTb0fUVCv6t2nGzKZG1cimeF
	+0cZszXvSpZiMYRIDRnHgAOBSA==
X-Google-Smtp-Source: AGHT+IGuT6lVNB7cIpYvA7EZ8/Jr7kwjXR9UQUpR9eJ6vVvrUBsCmzZ4JbFwc+knpIGN1KAjZzFJuw==
X-Received: by 2002:a05:6214:b69:b0:658:708c:4d56 with SMTP id ey9-20020a0562140b6900b00658708c4d56mr6566479qvb.17.1698490341056;
        Sat, 28 Oct 2023 03:52:21 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fad0:0:b0:670:afd5:657f with SMTP id p16-20020a0cfad0000000b00670afd5657fls453169qvo.0.-pod-prod-07-us;
 Sat, 28 Oct 2023 03:52:20 -0700 (PDT)
X-Received: by 2002:a05:6214:2b05:b0:66d:18ab:b482 with SMTP id jx5-20020a0562142b0500b0066d18abb482mr6611821qvb.63.1698490340427;
        Sat, 28 Oct 2023 03:52:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698490340; cv=none;
        d=google.com; s=arc-20160816;
        b=B/nJHImtg/TQ4i5bREohbLNcMjBkJzcAns2EMVdRC4msJn49/yBqz6GF/UuP8lJu+o
         6bV5VofYxjYGgC4mnQS3Plrd69pXZIlyMMe4LwHM/KqWSHxybge22e2eN6TQLA3Tmkot
         kf29LkpYfZaZ+vEcj8qp2wcaBy78GGequZWJSdP/8nOjKVC+XsIab73BVDWGCRDsAmeE
         PEadhjCjISLFNT/Ldyk01jdu67CKusINynGd/0zkRbshUvCnBt0rYobWRcMH5dCJedqY
         KqPUGNyYzuSp2n22epevjlOBX+UCHfXK8RoT9m8PS2FDM7oXHi0KJ3muY/PfVYoSb8iH
         vM6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=PC1ePr+VSu+i1LiTtXnjuUGrwX3eMbQvD/Bm0PYFOgw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=vcOtcTpTQp50HNUq7vU0OtEsFmopWsv/l8K0DCGWd1ScO5idCGNIs2OPOMgGKxoPhr
         aArrAM+uZNS0KzsinXcVQV6RkWRWnjCzBjCpHad+OI51AsYEcZGRvz3zhlXIJkLgKv2Q
         aKmiYyz4LVyXKatHOACHdhNECoQY4LE9XnGPyzee7xsZfGDzD+F/7cGv7IVuMnEIgRja
         M/0s/+AsNQvZVKqhU3UKqdr+fzgHZoduB43uO3nY/EN6SOsxiA+0Ql7RaBzds83BD+Gb
         lCZ/F7RkeHbpaW9sVQSWnBSum/0VQtsI0+Ys0HJ+NHj1S7xZVGzn5JjfobOGstyry8yR
         gE9Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id ra15-20020a05620a8c8f00b00776f2642d26si1954928qkn.729.2023.10.28.03.52.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 03:52:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-422-SRd4XeDnNveN9XwMAmQCEw-1; Sat,
 28 Oct 2023 06:52:18 -0400
X-MC-Unique: SRd4XeDnNveN9XwMAmQCEw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AE8DC3816B4A
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 10:52:18 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id ABBF95027; Sat, 28 Oct 2023 10:52:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A4594502B
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:52:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7615D811E7B
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:52:18 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-586-ohFEgJ3oOY6toXWoEPSgkA-1; Sat,
 28 Oct 2023 06:52:16 -0400
X-MC-Unique: ohFEgJ3oOY6toXWoEPSgkA-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 3A4213216D
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 10:52:14 +0000 (UTC)
Message-ID: <3bcc3a12-cae9-40c6-b4b2-e077f6fc9848@jasonjgw.net>
Date: Sat, 28 Oct 2023 06:52:13 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Arch Linux How to display optional dependencies for a package
 again?
To: blinux-list@redhat.com
References: <a5271ea4-808d-45bd-b4c7-29101f41e4c2@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <a5271ea4-808d-45bd-b4c7-29101f41e4c2@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 28/10/23 05:10, Pavel Vl=C4=8Dek wrote:
>
> when I installed Thunderird, I get a list of optional dependencies. Is=20
> it possible to display these optional dependencies again?
pacman -Si thunderbird

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

