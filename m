Return-Path: <blinux-list+bncBCV3N6GOXMCRBGUF7G2QMGQEQSJH4JI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A57953997
	for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 20:02:05 +0200 (CEST)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7a1dab8a2eesf143616285a.1
        for <lists+blinux-list@lfdr.de>; Thu, 15 Aug 2024 11:02:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1723744924; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdXPxqev8ENPEZ9ZENPO06i7f1oeHtef2Kw4/j/tcI+6/omqMuztkZpi23+zCz4yZx
         zvMOIu/nDxEUDDVJ+lfw0YaCTuOifwo5Vrj1GphSbn27Y//6a0e6gzWoXek4kBqUeo+y
         /0TmCgS7KDHi//tkBd/YOYzknLPbl0DwCtwAblN40vwMR9G+Y+obMYqEw7KGQ5zpHyBR
         1uJnHyFjeyYrTtTZQqG1xbLP59Bxf5BuU4iJgloCPQ4h5Ra72U1emmew/hPHmASox86P
         b5q2f6hQJVQOUdS/rgNN3PRlJOI2PSgAPlE0M/pxBaCFhFGlqfRCeRf2Cdc2A8kAyroX
         o/sw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to;
        bh=wsu9FYs3ZS0rK2RcLY5ornlssYyYedTJGCgs8SMZ55k=;
        fh=0Hr0axM76mCXBwszz3JMjfwmkrnqTXxrMg8CmqwvnVk=;
        b=lZVaMFE4VSn/VmKgGE6JO+KVAkQYToXIIR7UNsBmcBZ62O+/9SlbQxcgXe8GgSh7ke
         f9+TDMcvHh4oM4F+0665U22x62YJS1qi2xdrZB7a3vH/tFieCBJWfIr7xO82+fv6I0Vm
         KkdZ0yTZLeZRn+HnUO1OBEdCDXuQhdilukbU8N52BgZQagasdlgJLoHbKi87miBw7wop
         X1kyJO32LdlUzznFPH6768rFnI/Z9pv5ovEGIAolvbjZR6kqTILGNghRMuVdL1QyZc0d
         3HYBVkZZnmd9hVI0DOM7TVNWeXCLJTCltu4aY/r9mwodBqS78jQkbY5C1iLA2Ruyo2Uo
         ybwA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723744924; x=1724349724;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wsu9FYs3ZS0rK2RcLY5ornlssYyYedTJGCgs8SMZ55k=;
        b=azU/1uxM7PP2KHnChu0igV5A5dKnyFWF+fUrzNHETy9lJ4je+dZ4jA5Buh25xn6WBa
         SZO0MEzXTQgamJiy9ZgkXCcgPkpEhCj4bU6zzDcXnV1L55pXbpwy8cThbc+JLJYNQtx7
         nLH0AcZAnU4mqi81YR2P2xccKSO6oyeWt+NzRzyOe3YoGaRL0Oq9X1/U8/ODd7kAmQN5
         1fNm8p/Qi6lYqsLjMKDtFVggrhBY8pBEwoplppBgUWuM48wWzkolzLhOcrjI6+DxZ/XG
         P0YR1DXOiWZriJJRwQgnwg7fEbl5zKKSe2szzaCgnYk05CFGT2kS1OKxZvff1I2Vi3iD
         bVTQ==
X-Forwarded-Encrypted: i=2; AJvYcCX14awS4Uu26hYxMgswyS3CmHQ4sHRhgheCNHJ1KqjbLG3ywsPIa+R3se9xbzHUptn1X0NmzpuMuG3TUEy3Hh+3sWe2SkKOjnty
X-Gm-Message-State: AOJu0YzAh6rba/5K3utNS5G4/fht7/bkr9nuiofSV1EstLiYAMfVzK5X
	ZzX6JSAKCdRFr+4tHfyTTSy6jVyAvfjP8M9zfjoJnuBlY9nojMvKslF+VlZ2TfI=
X-Google-Smtp-Source: AGHT+IHIVhYTUHbcLRFz4wRVJ1hNzGjjOSU/29H94lamMnK80KBCkbL+mJsRBPr8/w6SzrnjzTPvIg==
X-Received: by 2002:a05:6214:4806:b0:6bf:6df0:b46b with SMTP id 6a1803df08f44-6bf7cd79c9fmr3439556d6.9.1723744923121;
        Thu, 15 Aug 2024 11:02:03 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:2a45:b0:6bd:9552:bc85 with SMTP id
 6a1803df08f44-6bf6d929d9fls16565156d6.2.-pod-prod-08-us; Thu, 15 Aug 2024
 11:02:01 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVAr6kD0IexghVZ0T/uY6hiqGgfdR71SYSYmmhim916YUf9At8zQ9bQAdhH7E80p6HrTXEQR80cPbOb2ZF2PZmMQu78i/FnmltF2JIv
X-Received: by 2002:a05:6122:1690:b0:4f6:c44b:2504 with SMTP id 71dfb90a1353d-4fc6c9fffedmr689130e0c.10.1723744921720;
        Thu, 15 Aug 2024 11:02:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1723744921; cv=none;
        d=google.com; s=arc-20160816;
        b=xQaUKD6lonQ2JsmEEtZI/sZAAdo4eLv9vhDQu/nGNN5j0d+63iPBzxALFUc8QrcWfy
         /5/q6EnEzBmRtd4baXpqIRhcZxal0n3phwdQjwFH48bOdmOqTPNuS4NbQnTL52HJzy8V
         KrTxygtCUiq2zugMSy5zlFs16yxL4X52APIHCXVBJyE4opS5Z2xDm/Bi7kxwInFBUDDy
         2rzInW0S3AF7/XVeA48x/vJw5X7GNFhjlm/j4wwZALyKRik7ZYW6LMovTYRrdR0dx0QK
         fsA0MWvZjIweQmo/I624M6cPwgZlXiqbRZUdP75x9nHJ5aUmJItBB6+qbCN333JSId6w
         DdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=boKjd09PT5YalnTaefA6dvpA3GTmQKFZdqHt6hykHGk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=D2KYoOe9h7vUVDwJQd48btciWAh4wH4ahyvvg+6mCWfy29xLhhEh+iC4VCb3SxYR+q
         8XQm0sCyPgkr22H/zsWVW/vmX0c4e9YzkzDk9/cu3Bvb3Ih6YN5xfE0ncuiJ+koHqJNc
         7SH+cIqnwL+T2pCd8r/LwD3kLA8knQT5DOBZysIlZckMRR2yLPAyjFfSl97zMqMKOywc
         CR6XbpciOAH9JIBVQFcgvCAETaEjLRKnYPlPwaqJ+JBJXVP0c10g2yoaD6FTqytgAAV9
         WDOBz5bGK+AosRLIZAKPfQOjTwCpuZukomNYqkJwJVHkWlC3dIPSomcvGldFxhCFH5a3
         drBA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id ada2fe7eead31-4976ff7af8csi436647137.546.2024.08.15.11.02.01
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 11:02:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-42-T4gLO5MWOvaKWUF15Zd4kw-1; Thu,
 15 Aug 2024 14:02:00 -0400
X-MC-Unique: T4gLO5MWOvaKWUF15Zd4kw-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 59E6D1955F40
	for <blinux-list@gapps.redhat.com>; Thu, 15 Aug 2024 18:01:59 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 552541955D47; Thu, 15 Aug 2024 18:01:59 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 526331955D44
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:01:59 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E346B1955D4C
	for <blinux-list@redhat.com>; Thu, 15 Aug 2024 18:01:58 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-622-LZhbBKEnMu6EiEQuJn2Lyg-1; Thu,
 15 Aug 2024 14:01:56 -0400
X-MC-Unique: LZhbBKEnMu6EiEQuJn2Lyg-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1M5wPh-1sXo6M21H9-006WwR for
 <blinux-list@redhat.com>; Thu, 15 Aug 2024 20:01:53 +0200
Message-ID: <e0bdaa40-6783-4634-91ff-42f3d1f072b4@gmx.it>
Date: Thu, 15 Aug 2024 14:01:52 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: emmabuntus info
To: blinux-list@redhat.com
References: <2f5ffe14-428d-85fa-3ddf-8d080b9c72af@panix.com>
 <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <93065d1c-c24b-4492-bc7c-a5a9ffe8096e@gmail.com>
X-Provags-ID: V03:K1:97cVfykxYwMlQkU35sj1tgYn3t+rY9aZSG8PtO5R/9npoNCqcWr
 lP+R7eM7n9gkc0RzObN98EpPXUGTOV0QmPcqLlKx/svE4TsbwIXotEy5dAvTgDQxq5zBIoz
 +tPzOeXaz7eKd4PBUOIkt+1IugzxbbqMcaQU+8ZYYVA45KC5EkdTRoDaEASSXcHO+sroBs+
 7xUpHTa0HkLYkgsWXrgRg==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:dzliEGMsPIo=;a0vhFtXRZbToLrmKZMBheX7cpOi
 Lw7qTBXZxLthL6BT78Xs1gP42MAl2G+5l4a9LJ/KsYp8lhygROn/FIPvH0shz3/G+zZPwFnpx
 PNNiEPQISAn1wRr9BydVjF7AGku+lhmh6yelYOlaGGxRGZ1iWPH5jQ0eQjelGMEEq/bVSjJkU
 9C4GThn5DFJ9pXnTBMF54HT5RaTGLVcSKmWeaZd6bMg0l31w6qp5GH0f/RmmcvH35AV4JpU/c
 mdEPJJedhmSR612Yf3jHJlpE2pj9lO9gIBFu9j8Lnas2Xdv7ECFjQO5HC3iXVBbbuUQYi0NJE
 iyCoJ8fEk8dGsG56RbjVeq3Cb7rJrAJzNmnO3w7JsXUqMycjKLr2MvteN+A2O/cOD+4H9uv2D
 QFOcC98mEBqEJZTovYTD22xRKlhAOoRK/0yvgG5Nu6SX1vkngAR3xxBNcIvebP9Z8qsDTsjNg
 kHbAJ94LuL5Fj4eaXcc8giAHpplEquwNpjOrP5L+Qr/LNeENGQ8b5sM2mQs8GiuTTgEeC7iPr
 ElIkqTQHR5R0FQ5+Qi0gVO+82FNx6hvYb9FHlN6DrX0XNpLMLB4i99HwBcpGascj/kL26gKak
 5EQoDyiHKqxAb9gbsNNCZGgu9xifc2/+8xP7fXwWvVNAhba1daXrYw/raxBV6XwE6h3DDlK0r
 Sl8wKO6jRfmTajTEeBrHnLIAgZ0L0b2YPTxUU0K9wHUscfhJx36Fg90Dc79QoBw008ddPCxHV
 K8tXEhu4DOOawnGLzO5o0aMmVBaoPwrJyashUCNU5sFgGh28F/d9po2z6fDPJfDuTE5RWqY4v
 d9bUOMckYtyPK32KN9SOULpg==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Original-From: Kyle <kyle@gmx.it>
Reply-To: Kyle <kyle@gmx.it>
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

I looked at it in gnome-boxes. It defaults to XFCE, and Orca comes up
normally using alt+super+s and shows its preferences window immediately.
It starts up with the Pico voice out of the box, which may be better for
some users than the default Espeak voice. Unfortunately I couldn't see
any desktop icons, even though I could see that the desktop=C2=A0 settings
allowed for icons on the desktop and I could even arrange them. Perhaps
it has to do with not being used to the way XFCE works, but I couldn't
get to any top bar or panels or anything else other than the main alt+f1
menu and the alt+f2 run window. Applications in these places do seem to
start without issues and work as expected, although I couldn't
immediately find the installer to see how well it would work. I tried to
log out and start the LXQT session to see what would happen, but the
regular user is locked with a password that doesn't appear to be documented=
.


So the accessibility in general seems OK, but it didn't work fully as I
expected, and I'm not sure if that had more to do with XFCE still
needing work or the fact that I'm just unfamiliar with it. Hopefully
someone more familiar with XFCE can comment further. For now, I
definitely still prefer MATE, and for that, Ubuntu-MATE or
Fedora-MATE-Compiz may be better options.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

