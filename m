Return-Path: <blinux-list+bncBCHY5TMQ6YERB76J6SYQMGQEH5JDBAY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 931418C157B
	for <lists+blinux-list@lfdr.de>; Thu,  9 May 2024 21:33:21 +0200 (CEST)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6a103d524fdsf5878476d6.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 May 2024 12:33:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1715283200; cv=pass;
        d=google.com; s=arc-20160816;
        b=r9WAIRbP+BzvTxVaSN5zIJmlk5Kc5Ee4orVHxHBRuh4IZeeBFySBlXkxS4gcQ6JZGC
         o4CEMScUfzX4HjyAI0EIHr+dJh4ihSuHC6w4x5Keo1hIDVPiNAshNB2sVY9q8YiO+skm
         1WllYUNhX9zvQhAkxJa0Hxo+WVILni8tedYrNstgRQp3vZPl/wFs5G3vLZX6WELnts6m
         L0LNzG7Uu/EiukJSooTq39t3W1HShMj++Iwu5Jv6QV9fEiRNClOny/ovJKGpwt3yM8Ry
         fhEIrG/ZmqbTzel8THWdHcITvgssob6s37wbKyqzjYbx7DCF8iORtnnsx6Bmd4KK1OFN
         HIxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=8fSh/Ls/5ac81mHI1ttEtKaynyBLyJXMCkncmMy6ing=;
        fh=6OHnyUvoMWihO5qdcpu65buIFbH6AWbX55AwJOF/0Z0=;
        b=SBLYo7YJKkcLEJLR1OX5JAt/j6clUy9ZA4Y0NFLNpg9fF9R+n0Dj4rmeQHFAADMsKT
         nxm9ICuysnh5SMEpdpBf/27gnjRPuJItx7pO0n6tNI6ebjdDEQtXWd2JXW6svR/TAuPn
         ocHwNwDzU8Mg0EZpf9nuZmizspeslmaHB76WAPLi1/9J1MXfBMoy11nrWEat7rI39KiA
         WYjR1fxCbxbAquXBERNuTN/QSugkrZ41ccNXj4NNqxRrUawp7mcl/stKHZ04rTm/w9ra
         mphP6wof79VKbmpBJVOjLgkEna9hKYOzOFjyaCMBdilQFnuYiMp6yf2EISv9e1T8d/zz
         CnLg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715283200; x=1715888000;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8fSh/Ls/5ac81mHI1ttEtKaynyBLyJXMCkncmMy6ing=;
        b=S8NjmusGu2tfeKLz9hQQ8wsPfFDglS+R1+L8O0+4J7I7nYcDbjpeiq1NgveOqVJH/B
         AmZE22Wdue0zh3xqqiySGriuK21l7BgVDv/JSUfvz/wsaUAxAwdfa0zqdl+OEk+TtgQB
         aQq6ua/RrNxniWcBZVXgNAf98ScieXZhQxBjSgcjAQBWW2FHGNEgOVoawzZgjrRcG5Mg
         4ztBMSKqKiz7zB7DdlNTy0p/RXyoIbyDY1lVMGfAiiNlHZRyhj2RR4RclXq2og7j067G
         adokF94queKZmRFt2ZLF+KKCefa0Y4qMZRRMkenjmSBFSGPOgd3/krZNvps63RNzSMXD
         xvSQ==
X-Forwarded-Encrypted: i=2; AJvYcCX7NNVg4DdvAscZSyouNtGgpUBt2Jwf+z2G4Bc5hW5qm7DERAK1fYg/udK4E2l0CsjcNkCltjce0PkrXNhgg5wa306G7gU72uWO
X-Gm-Message-State: AOJu0YzTV9LwOFhEXaZqKrBrALjrDUrCcFJ0Jp5FfboVelID+K10v66K
	k4rb7uXXrXImpBEvR05qJB+hWVLCamBp1YcLCh9M6+fzZ/KY7rp3sbKFrneFy4Y=
X-Google-Smtp-Source: AGHT+IElEOpJezJzMueIgChQZ/Txa3xZ8FDk3nhsrsxI0lmoLYklHN9pDO4heTxg8Y1kT9bO7mIvXg==
X-Received: by 2002:a05:6214:1418:b0:6a0:71c2:e929 with SMTP id 6a1803df08f44-6a168142f2emr3707026d6.1.1715283199746;
        Thu, 09 May 2024 12:33:19 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:260b:b0:696:892c:9e58 with SMTP id
 6a1803df08f44-6a15d453030ls16120936d6.2.-pod-prod-02-us; Thu, 09 May 2024
 12:33:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU0Y2URmhna4m93KpAQkxagbx97otMBcLNLRwkNRM5i6Z0ZwiZ6YyozP4kx0xLbC1EuVc6/aeFADZlOsJEX+eTRrFBs3noZEMot5YNi
X-Received: by 2002:a05:6122:a10:b0:4c9:98f8:83db with SMTP id 71dfb90a1353d-4df882a3a15mr877376e0c.5.1715283198546;
        Thu, 09 May 2024 12:33:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1715283198; cv=none;
        d=google.com; s=arc-20160816;
        b=XJniYdvlldOqsVwBbUOz3e4Lek8YWRPZqXdsFsDEK9WskXGH87paVgxkXcLVghmIXs
         2nhM6ZLjfceDcPWrBmAAYhePmtYNW2h0gYmPpbozBlBbjs3BlFnXXRzUvWMIMGa5YXVX
         R3U0UBcAPxoDqXLf63UAqMf8H+fxYmpWnEf1vN+1stVQcyl7t5ZqXIVneEng9Vsp1iy6
         ItBK2lQ26cP/E0UUcOE7IGZpZt20os1RaRtj2MhNZcS9mREWK0ZZFfJ8ixsJpA9m6Olo
         qCLkgeUewP6jwaaSynG4+YzpS0PyyV4bqe7vq2ETNtu+WS0xbJ8cdycuSGb35Ue0J2A9
         lidw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=noCj49eAY7fmzpAhcMSNtiz8xty36HMSF19CFvzQqjE=;
        fh=PBJei6+M0RghvX+Vaompg1I/534+eXmDIbhC6sv43eQ=;
        b=DgdghZgXPZT/jJyaBCOX+pVBpEsq9XRFqmF0CI43TVzHm/91bPXtAv3TZlrXNG1Zuk
         GI8E3GXDNEa6cqEO19ZDTKxFGpGEspCu9a2dxKOWELJxfBfFhZT/0KwD7lf1aYZ+4XWc
         OErXEDkfiXEZSGPpFhCZU/Ol6U+H8O/a+tWe2hw2tWOfGQuzACkq99QxWeu2w3843zzK
         OB4rJZKIVmqGZmcsftJk4YMFetKWICKSUtdgf5db5bfNRIBS+rSVgyRW+YXEI3dURLJh
         k7zqNS/U6awnLNQzLFVf0KFrzpt5eFSaXHCI7ehLgI5to4gHevpEqjYqyxQEYyJic7Kc
         51Vw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-43df56e1e19si19619781cf.754.2024.05.09.12.33.16
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 12:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as permitted sender) client-ip=185.218.88.66;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-556-ntW_5uddMj6Op83UZWoWUg-1; Thu,
 09 May 2024 15:33:14 -0400
X-MC-Unique: ntW_5uddMj6Op83UZWoWUg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 98D9429AA389
	for <blinux-list@gapps.redhat.com>; Thu,  9 May 2024 19:33:14 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 616E513DFDB; Thu,  9 May 2024 19:33:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 282F8287C
	for <blinux-list@redhat.com>; Thu,  9 May 2024 19:33:11 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C4A931C02D26
	for <blinux-list@redhat.com>; Thu,  9 May 2024 19:33:11 +0000 (UTC)
Received: from server.harrastenurkka.fi (server.harrastenurkka.fi
 [185.218.88.66]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-294-bNpPY4sbOIKDW1ps-I4XRg-1; Thu, 09 May 2024 15:33:09 -0400
X-MC-Unique: bNpPY4sbOIKDW1ps-I4XRg-1
Received: from [192.168.1.20] (178-75-190-98.bb.dnainternet.fi [178.75.190.98])
	by server.harrastenurkka.fi (Postfix) with ESMTPSA id 844184115A;
	Thu,  9 May 2024 22:32:59 +0300 (EEST)
Message-ID: <75c14585-0801-4c0f-84a4-23c0377bd20b@harrastenurkka.fi>
Date: Thu, 9 May 2024 22:32:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Re: lost website linux accessibility
To: orca@freelists.org,
 "Christian Schoepplein (chris)" <dmarc-noreply@freelists.org>
Cc: blinux-list@redhat.com
References: <f2d2325e-636a-437d-a489-b2a2fe6fec7a@harrastenurkka.fi>
 <CAL9unEtZYVaSFOLjJ4LRqXceNte4xDv=F=BZnZ5smYn37AELBA@mail.gmail.com>
 <33303af7-4eaf-449b-a356-043e93f4f138@harrastenurkka.fi>
 <Zj0NbP0wKAmWJvkB@d5421.linova.de>
From: =?UTF-8?Q?=27Elias_St=C3=A5hlberg=27_via_blinux=2Dlist=40redhat=2Ecom?= <blinux-list@redhat.com>
In-Reply-To: <Zj0NbP0wKAmWJvkB@d5421.linova.de>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: harrastenurkka.fi
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: elias.stahlberg@harrastenurkka.fi
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of elias.stahlberg@harrastenurkka.fi designates 185.218.88.66 as
 permitted sender) smtp.mailfrom=elias.stahlberg@harrastenurkka.fi
X-Original-From: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
Reply-To: =?UTF-8?Q?Elias_St=C3=A5hlberg?= <elias.stahlberg@harrastenurkka.fi>
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

hi

My system doesn't automatically boot from a usb stick, so I have to at=20
least use the boot menu and I'm wondering if ocrcam could solve the=20
problem. Current machines don't have many serial ports anymore, could I=20
use a used proxmox serial console through udb. Fortunately, the servers=20
I use support ipmi and I can access the bios through it, but I'm also=20
thinking about this, how do I use the boot menu or the bios completely=20
blind. Obviously this is not possible.

On 5/9/24 20:52, Christian Schoepplein (chris) wrote:
> Hi Elias,
>
> On Tue, May 07, 2024 at 06:41:51PM +0300, Elias St=C3=A5hlberg wrote:
>>    for the purpose, my purpose would be to be able to navigate the bios
>>    independently and maybe install proxmox. Would there be a capture car=
d for
>>    this that would be connected to the machine to be installed and to th=
e
>>    other port a machine running camocr
> Do oyu need to access the bios just in case to install Proxmox , maybe
> because the installer does not boot?
>
> If  the Debian installer can be booted you can install Proxmox on top of
> Debian. This has the advantage that you can install Debian with braille
> and / or speech support and have full speech and braille support also
> for the Proxmox installation. I've installed several Proxmox clusters
> this way, not problem and fully doable for a blind person.
>
> Since Proxmox 8 there is also support for a serial console in the
> Proxmox installer. This might also work  for us to install Proxmox, but
> I never tried it because we are still using Proxmox 7 at work and all I
> have to do is update the clusters to version 8 some when in future.
>
> Ciao,
>
>    Schoepp
>
>
>
> _______________________________________________
> Orca mailing list
> orca@freelists.org
> https://www.freelists.org/list/orca
> General information: https://orca.gnome.org
> Orca documentation (English): https://gnome.pages.gitlab.gnome.org/orca/h=
elp/
> Orca documentation (translations): https://gnome.pages.gitlab.gnome.org/o=
rca/

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

