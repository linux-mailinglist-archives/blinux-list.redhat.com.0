Return-Path: <blinux-list+bncBCLPHQH4XEIRBD6KTOZQMGQEPNVM2RA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id B548590206D
	for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 13:35:45 +0200 (CEST)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4405680124fsf21347461cf.2
        for <lists+blinux-list@lfdr.de>; Mon, 10 Jun 2024 04:35:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718019344; cv=pass;
        d=google.com; s=arc-20160816;
        b=kw8w5tFw5MtmaXu6/twuEuUAilDwzhJrtotOGr4xS7V97+lZI1wwQZUO9cKXYChpSH
         3wPuZxJ2viItI1iF2Ypo5Jr/TfR6+JdgOCUTvczdgxNlQBmWKhJMONELYbMjcF2u/bBJ
         JnrYQFilAsHvYValtDvo6Ag2lv4rXe7An0iYAeU69I4LoUN+dhoxbJMk6ICL2ftq45gx
         mk17NqRPQl9FaRHIQWbNtfs1JtoWYtZ3ftMxp2pEIaQ3esVBosN8ocOnk23Hsi+Oox5O
         duMpACVK85qaEMZJlVnoIXrPARPVCPpe345nVQeRBnLSgCA28E/gzQkTuVQQMcd2gM3F
         DxeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=DjSXI/kO8548wGQ3XUhKAbJE7Bg71B9AmM+9IgnNgvE=;
        fh=kAFamKkNNdBbyTDCa4+mw9kVLXiWEyoB4OnzHKJdTPw=;
        b=oBTHVbP4S5/eu/M3yCvfgGJFWQiYZ9FAOWq4A5gobi94nskm5RHVFisIofvU1HTnj1
         wriGS01orwDFXEEnRh8zZCWk6jBxwq4UMWuVqvteXpFdiVUtDERk9Q6Vcbw3WzV/FT8G
         3psWnAkv0ifl5Gp+EMwQb4NlI+AIedQVU6dxbwlJZxA8FwZWaDPAeceQeN1UdIm9To1C
         7Gyxp3gSZ2AvylQQpN/MZb0kE+DPPMqGIyDxRsYKEzY/t28GEByy6uPFGSSM0QUQBFg7
         gdeP+FFs74MHYvGUnzjoMRe1p2XD3NDb43e8Z4ui2lOotKc9eY7+TLCfnmOWUJqrCMcV
         M5+Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718019344; x=1718624144;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjSXI/kO8548wGQ3XUhKAbJE7Bg71B9AmM+9IgnNgvE=;
        b=GkFRK76c/njeT9L9RhMfTtW7TWw18qACu4rWrcapaMc+HNW2kyYzltRhnlbHBZXYuS
         woVKw3t6AKMQAVdDJ3tqTFVaTvPsY2Vw0u8AF5NZPFFRm4/IstbORfm0wa/VzEN9z2MK
         wXvQ9CaTCfW+/wYqMX7crI1Iypf+pWOw+hLFYtpFfP7aFu3VeCDV2zjcbZ3B5Xa7mAA6
         X3OVyEp4EgrEyHUqQP4s4vZ2lveTeCy4lukYBSQ+j4TEmZm6CxMEOYlXuRl5cRoNZFnB
         /vFvVGamQmlZELJeZquVucTnR8KENCEtQUH6q/U/+AEjZ+13Y97QDRDmOussiRVINlSd
         ut2w==
X-Forwarded-Encrypted: i=2; AJvYcCXxFFsLrl27L30wpUPDxn10TD92qsVWsCLWo8pOrazGwD2y3D5bFVJOV3e/cXLe2K+F7PURzWsRqX30xcny0PciJjAPsqgktmR0
X-Gm-Message-State: AOJu0YwsSId5J5lgo0UmktLNpxjwIz8qjN0zzIZLeHQwuMo228piRyk2
	YytQOZbEtIMMN/djPB+tyFm6EEzLeNcjBq3CN6JRal2eQ4Dv+XJ1F6Ndc1djdzc=
X-Google-Smtp-Source: AGHT+IFqR3wk4fAFplXi7XlVHxZyGYXqjm/4vgVmdGvJ6+Usr42mWUGx9oJsjmT+lCg6ctUSOuyvMQ==
X-Received: by 2002:ac8:7f52:0:b0:441:2995:fa08 with SMTP id d75a77b69052e-4412995fb02mr2611461cf.19.1718019343859;
        Mon, 10 Jun 2024 04:35:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:1303:0:b0:440:9a88:47d3 with SMTP id d75a77b69052e-4409a885642ls11156681cf.2.-pod-prod-02-us;
 Mon, 10 Jun 2024 04:35:42 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUxR0XQy1zTGmH/k4zHIL4v+LpcmhCo9Rg6an4aZRKya4OPzO/cI4ojIrVE8zG5H3wSdYcTl2zHWHZDhQtZJqM9rei6pI11QivR3KIh
X-Received: by 2002:a05:620a:3725:b0:795:5b60:a1ff with SMTP id af79cd13be357-7955b60ab99mr515792585a.40.1718019342582;
        Mon, 10 Jun 2024 04:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718019342; cv=none;
        d=google.com; s=arc-20160816;
        b=Kv5GyZf3+aeQMXCaIlQk/IS3vS5quXjGGANSZbOVSh0vmXooG/zM02zEcmxE5SFMmP
         RAZURaCAMRtIs9bc9ppvI2P98hlx0S6Vy6LLh3UGmMyFmNR6dmK6aqZ1zRSwbv3UI5pP
         qcoezeKbdvuxOyYaBh9HzlOeZtgivnBiBRqjBumOq93HIgtWV93i3jtd0onM3OfiMADw
         VHxMlQR72YlNWYMuFYq3TFud2emLz3DSca3mAx7gX/JL4NqzR3R0wSDk5j0XG1wjG1yy
         pZtRbCNNt9Y3HbvqB+A4EahFtpCGfVb07ZOpgzmYgvQ7bYQMyf5TIbJwqZ0hLGII3LV0
         dMEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=ISrYDdYnZbidH7hqSahFW2Ymy107Kqpfm60ccZoMMJs=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=qv2AKmmoFvXGejv/Q96GSFzFD33UNIumIOu/gkj2KqWhqP2e0VcaqUsG+8zhbMp9yO
         qiIA2fsXz/2wM/aBs4uQB194Gxs9czXbmUUrxHognV4QJeLJa7CSmb0Ku1fmu8aJu89o
         3j7znuuwwSWM4Jo9E7iP/tRXaEXJWnZvcy+8IWRhYnzbLeL1fMI0zBStzQq6goh7QPOj
         AKUb1FqZnqbCreVFVJ7cCiw9BLnG2gH9OXmvPjBdcOWBKpjGyj8aRHyoc3v2pDq7XllT
         B0ZijJm2sgJAl5UGxgbckvyVkmvu2oEsxBb/6FUI3NYCkaCHnOZaVclRVaqui8l0Kw0K
         mPaw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-44046365cbdsi78371231cf.677.2024.06.10.04.35.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 04:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-146-gk6kRheAP8SFhOCkXa7zsg-1; Mon,
 10 Jun 2024 07:35:39 -0400
X-MC-Unique: gk6kRheAP8SFhOCkXa7zsg-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A7F9919560A3
	for <blinux-list@gapps.redhat.com>; Mon, 10 Jun 2024 11:35:38 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9934319560AB; Mon, 10 Jun 2024 11:35:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9683D1956087
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 11:35:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 196C0195608C
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 11:35:38 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-587-Z38r3_cnNiCcYB8U1ZYewQ-1; Mon,
 10 Jun 2024 07:35:35 -0400
X-MC-Unique: Z38r3_cnNiCcYB8U1ZYewQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 4D4CD32471
	for <blinux-list@redhat.com>; Mon, 10 Jun 2024 11:35:33 +0000 (UTC)
Message-ID: <26109e97-dc30-4645-a556-0275aefbcf00@jasonjgw.net>
Date: Mon, 10 Jun 2024 07:35:32 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: likely accessibility defect in archlinux latest iso
To: blinux-list@redhat.com
References: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <15d281d7-da29-e92b-867a-56ddf01fe833@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Type: multipart/alternative;
 boundary="------------V8HDsb07eNDok23J68dy0xbW"
Content-Language: en-US, en-AU-large, en-US-large
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

This is a multi-part message in MIME format.
--------------V8HDsb07eNDok23J68dy0xbW
Content-Type: text/plain; charset="UTF-8"; format=flowed


On 9/6/24 21:13, Jude DaShiell wrote:
> It's possible to do the whole archlinux installation and enable dhcpcd and
> espeakup and then reboot and all that happens is silence after the
> speakers click.
Yes, it's possible to make istakes during an Arch Linux installation. It 
worked for me first time though.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--------------V8HDsb07eNDok23J68dy0xbW
Content-Type: text/html; charset="UTF-8"

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 9/6/24 21:13, Jude DaShiell wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:15d281d7-da29-e92b-867a-56ddf01fe833@panix.com">
      <pre>It's possible to do the whole archlinux installation and enable dhcpcd and
espeakup and then reboot and all that happens is silence after the
speakers click.
</pre>
    </blockquote>
    Yes, it's possible to make istakes during an Arch Linux
    installation. It worked for me first time though.<br>
  </body>
</html>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an email to <a href="mailto:blinux-list+unsubscribe@redhat.com">blinux-list+unsubscribe@redhat.com</a>.<br />

--------------V8HDsb07eNDok23J68dy0xbW--

