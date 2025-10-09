Return-Path: <blinux-list+bncBCNLZ3P6ZIDRB4X6TXDQMGQEO3K4CKY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id F119FBC84A0
	for <lists+blinux-list@lfdr.de>; Thu, 09 Oct 2025 11:25:08 +0200 (CEST)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4df80d0d4aasf28246061cf.2
        for <lists+blinux-list@lfdr.de>; Thu, 09 Oct 2025 02:25:08 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1760001908; cv=pass;
        d=google.com; s=arc-20240605;
        b=lgjUrqZa6w8fwW8XwPl7hFGiGXIKDUDqZSzBwji2/X2p/O4hA4p1Cb02cemUK6FSql
         hU1SlPeRQmrdqll17Tlulbmd1izeYU9Lfjw6fvMWz0/LHu58zTxe6LvQ4mtU9V5YCpTJ
         tzsqk5UUcIlyHb9ngz3qNXBzaHR5Z+lisfmhKyG/+DE2sqBET2lPI+5IpIU+qJsclZAF
         yq8gor/Nu0XH7vg/G5MVRN/3I3mMRZ4IWpo+3YrJIvT8tBifA2itYB6ODhxc9so5L9BW
         O3o/0PEP5n19sMpvABY3eqcV9iBkvZnJvVT0f8TszYQPZ2RWPDXuKkFfy3VhLi5Tdzb4
         2/CQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:to:subject:message-id:date:from
         :mime-version:delivered-to;
        bh=aPu4rNGVLcW4f3FaycAz5VU0nrRJGanHwiC50xJKkTE=;
        fh=7R+SRsb2bisTiuu4+1Zg42heM+cmPHSD0/svpHxsCpo=;
        b=DmYnYAWMHOzJKz/JyVHhfM4LSTqRm+NtEx8LWjPC3hl3mzyxhx5fYQyJGhooS1oVFc
         4KWZ4qzSvraZ6/ug3w2WTVzRN7+RDfVjXlYimq/Bs4Sfuv9de7kTPEjtGLcY3VHdMS65
         ecFCVOQcj5S7YqAfoqg+28oJxS8gzFQy1jZkPaBEl3/6si+/BAnPV7uYtp3R+LUJs1CK
         boJIq7GrYWV5mVKz6RyyFPmweEsgAJSaJhhT9oiwloWxkZ3DLOg2exaSSc5Gh8bIb4i4
         89lGAxOsLlSMw6x/yvvxq8wAEsa920pbWB+SnipQBU/CpqQ6eO06TMdgPbTzRkfdgItt
         3NFQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DG7FZhJm;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760001908; x=1760606708;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aPu4rNGVLcW4f3FaycAz5VU0nrRJGanHwiC50xJKkTE=;
        b=QxienViJFIHOyn0XLH2tI2C0a685tlzAMBuOl1iR9DB3NMgwI9L3NJ+S4Z2RMwU7hG
         3IBT4iGr6sIR5vXWZuKc2kVCtvcGNQC7e2JoS2hSX/Zrb27VYOjfgv0yJkirkf1Lnj4J
         UyuIeNh51NtF/bqDKB4njRO3rRZ0Lg4fMs03yheP+36SokvY/B1z6JFgUzs3oSwQbTSV
         J/LuONrzlOAfrvNNkP352dSILKEJ071IJraCentFE2aDerFQB65595umyqpbJAAXhr6a
         BJAp4MBsA/aVr9YBtWH5XEpNayI9QyPWqSTN55o2mYnauQogj7OjUedfHaDOxVvVuRg4
         //Tg==
X-Forwarded-Encrypted: i=3; AJvYcCV4Nj/WVrgoMJF8ryfftFTuc7xC0j4VQppeFFvv2vPlmQoGslOf4iWlpMWqDPaXDCaCTv9w8A==@lfdr.de
X-Gm-Message-State: AOJu0YxympqKOqNHFi5XDuOZfBuOGFPkyaXXGgFbNcIork6ZspsSIOM7
	ldVDTKKlEQ+Xi4BxlcJfKhI3q71e9i+MDozzX+D5HoKiw3MNF681KvYGVDkNbQFWaSE=
X-Google-Smtp-Source: AGHT+IGIag6yi7POAoW6J5CB8DQ2mLAYbqHIuffnNzRJQyww/BBw9teENd8wv28LPnC6kTgrnyG21Q==
X-Received: by 2002:a05:622a:53c7:b0:4b7:9ce0:43c4 with SMTP id d75a77b69052e-4e6eacc1df7mr94534471cf.5.1760001907509;
        Thu, 09 Oct 2025 02:25:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h="ARHlJd6ek5+LAzdkMFL9Yx5WVVPZB+CRSdNeppU7NBPJ2rHKxA=="
Received: by 2002:a05:622a:8c13:b0:4b5:dc6e:c1df with SMTP id
 d75a77b69052e-4e6f8b8b9fcls15987651cf.2.-pod-prod-07-us; Thu, 09 Oct 2025
 02:25:06 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCXsknF/VyfrK9NyJ+R/yJ5UiY6/4JOxBj1EvaNJGkXQqXAYOXDdbZZV1usbmrA0mOxAX8NDqlMk7OyiYg==@gapps.redhat.com
X-Received: by 2002:a05:620a:454b:b0:861:119b:307e with SMTP id af79cd13be357-88352e8e763mr1034549385a.81.1760001906420;
        Thu, 09 Oct 2025 02:25:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1760001906; cv=pass;
        d=google.com; s=arc-20240605;
        b=ZzBqYAB13MB9LE5T8GLH4+Y2S2qyUngTASEkuknDXie/zCm8FSWqOT6rwhO9cNH7kT
         5F1XfFOyP9TYbZ9KT4RzzraKbFDqBOxVNrEdIO4JupjSLL5OauGUA+tmpBXnPfCDsRtL
         ISiDcNdiwhwnyuiQ2akHuMi5zGfwFjTMgCjpQKd6n/YxDZLkxW38DrhmdDHCqrEjxfcj
         6vnbWT09DVruIMVQfKvjrcXO2mCjLqgIrSMC3CNmAgjN0pc2K5c6lVBJlKAAUmFQbdIO
         weM/Ne4ihojk4Nuf3PJvfTw1m5PmpLn3QGni8+XGPz0bA2Cw6co5sAh4t60+08oxTBxk
         emPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature
         :delivered-to;
        bh=CBbTRsrrSZTkkuTmLwlbXzGhsOG2tcRVE4sOgMntzPE=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=GLy8eM18WRvA5JQ7hV24Kah1qbWB9zLnYJmCeslpcxxZQaF9MB2JEwIEFB4GYtJd2k
         wUBvydPBP+dYEs/E2NBZcBk3QzFUyQyDGHVp7iO7qGDrqzVps1fV+Xy/ok81DDYFgjDp
         MgTee7nZ1ezn12MGZhuaYPToUFE3SMdZxPKUerUMBx1MhfqW9S/ERCRGI6e9HCrvxkQi
         WgpOjIwXoT/G5KqriUTUZEHpmxlblEbQgj4m1XLccFK81uBGlulD1C7/ySoQsOj5H3Wl
         DVAQxtYibYPFtN9ATI+VHnCZWJBjzQtAuKNfA7ICKlkWE76YcUY4HvTgQfteUp3v8bMR
         saEw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=DG7FZhJm;
       arc=pass (i=1 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass fromdomain=gmail.com);
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-4e6ea8c998asi23188401cf.1290.2025.10.09.02.25.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.128.175 as permitted sender) client-ip=209.85.128.175;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-324-QSNtuyPDNGqhpiC-06k2Mg-1; Thu,
 09 Oct 2025 05:25:04 -0400
X-MC-Unique: QSNtuyPDNGqhpiC-06k2Mg-1
X-Mimecast-MFC-AGG-ID: QSNtuyPDNGqhpiC-06k2Mg_1760001903
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D3A3D19560AD
	for <blinux-list@gapps.redhat.com>; Thu,  9 Oct 2025 09:25:03 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id CEA6919560BB; Thu,  9 Oct 2025 09:25:03 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CBB671955F42
	for <blinux-list@redhat.com>; Thu,  9 Oct 2025 09:25:03 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 42F1919560AD
	for <blinux-list@redhat.com>; Thu,  9 Oct 2025 09:25:03 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1760001902;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 dkim-signature; bh=CBbTRsrrSZTkkuTmLwlbXzGhsOG2tcRVE4sOgMntzPE=;
	b=bG4PLX+PjedzEoto+OrmkasVsY5+o7J3qffGWhbQbouEFB2IJDlaQyfLlh4FIvc02s66Sm
	e+y87MvqsAuCjCatEgU4AgyxRjlQ6Lz0x0KQrbhu/+rUtPoLkIaxS2dX4L/ocFZa5oERp7
	WZxXJXSsmcdnBD3kX49VDaMNeOhGgA8Ov+ZLh6EKIliG4Kyaon5yj8JyWVWUv7MNWxmfxj
	w8d+s1FnS66iXn6Gu3Dtz/sydu0AdJPGVdTL07SUg1QghDDSa3GcGBOfREMpGw9jKA0Pe7
	PbQIu63r5dWWbgliO0cuKsU7jLYvjFroOvjtzfVObhkRd7NSsoU+9sSO0vimgw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1760001902; a=rsa-sha256;
	cv=none;
	b=bPcdEPAznSxZ2kj/J2W4mBItYOmwCGEi6W9UUMnf21rb/kWiogV5IPwoEEm8r08yus6Lyp
	WXIU7r5csQo8CPEQB9+VAc1bmKZV9A2IJLoyNiHYjzQU9T0b/Q8AySgzCK5v5K840Oekd8
	bhzuv4TmpHHRQ8j4h8gQaf4h1/BYiQvGs3QnHXvNKuqNlyyHUHX8fLHtguAA/h7zB5GmCM
	QCO6dt9pFC01glaGRdf/kZw3mAhoTS2183PoP5SgqEGVtPO6tLTNypHymxY6GYGHsxJVWs
	4ozdJMMheX0u0eZmP7KJ9opcsCm2Zvn78yWvgvGhxp19NWmjhXvwzj51p3MPNw==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=DG7FZhJm;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (relay.mimecast.com: domain of khalfang1366@gmail.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com
 [209.85.128.175]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-253-SoPAlcDePqutXxH23aZX1g-1; Thu, 09 Oct 2025 05:24:59 -0400
X-MC-Unique: SoPAlcDePqutXxH23aZX1g-1
X-Mimecast-MFC-AGG-ID: SoPAlcDePqutXxH23aZX1g_1760001899
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-780fe73e33bso1639687b3.1
        for <blinux-list@redhat.com>; Thu, 09 Oct 2025 02:24:59 -0700 (PDT)
X-Gm-Gg: ASbGncsUWTQ4M6x7G+KTcV0XSDlSmSw7wbLWVHW+jdH76FP9hsUYh3E3SxoCf/0CQ2b
	sdn0P3twvbIwtvUfkgP2WU1huomc5NxtGGdm7i6BTOrFHTt7v8N2wYYX6qJkQgOCCyuGg0h1zFn
	FEbqdjsGPHrdlRzT1r/MI6hxniUb6g6yoi7yZGTophmM10LNu9II1qLHZe5UnoVvASn198Tn+Ac
	vGRjPX2VAowqXaDHWl1pcWa9ew=
X-Received: by 2002:a53:ba4c:0:b0:63a:183:ffda with SMTP id
 956f58d0204a3-63ccb8e1958mr4600693d50.26.1760001898759; Thu, 09 Oct 2025
 02:24:58 -0700 (PDT)
MIME-Version: 1.0
From: jace Kattalakis <khalfang1366@gmail.com>
Date: Thu, 9 Oct 2025 10:24:48 +0100
X-Gm-Features: AS18NWC9OA3uOSUcFQLGIiW7rZMM2rh8MEqNQ7prox_VFu3iBCNS5h-YVtERXnY
Message-ID: <CAC9uDhZ5fUxCC74U_5gD3B0_chDi-s-7oidF2JrgR=4bAh2uZQ@mail.gmail.com>
Subject: Niri, all about it
To: Linux for blind general discussion <blinux-list@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ko9RMhEgy-dEFNOa25LpmhG7dE5oytL6o63up7l9qyk_1760001899
X-Mimecast-Impersonation-Protect: Policy=DMARC Check - CHG0118091;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Type: multipart/alternative; boundary="000000000000fac9ab0640b65f99"
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=DG7FZhJm;       arc=pass (i=1
 spf=pass spfdomain=gmail.com dkim=pass dkdomain=gmail.com dmarc=pass
 fromdomain=gmail.com);       spf=pass (google.com: domain of
 khalfang1366@gmail.com designates 209.85.128.175 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
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

--000000000000fac9ab0640b65f99
Content-Type: text/plain; charset="UTF-8"

So, stumbled on this window manager earlier.
I'm pleasantly surprised.it's Wayland, but also has a goal with
accessibility. The documentation states it supports Orca with the 08.25
version and...this is true. It's also got a very, very well commented
configuration, and seems stable and viable.

It has Vim keys by default, H/J/K/L, it has several layouts. But the best
part of it is, once you get Orca up and going, and you may well need
Xwayland-satellite (at least I did on NixOS), you just boot in, hit
Super+alt+S and Orca comes up talking.

But there are caveats:
|
1. The config is set for Alacrity and Fussel by default. You could probably
should, change those to whatever you want

Aside from that, and a keybind to restart Orca, and one for swaync, hat's
the only modding I have done with the config.It live loads it once you save
and exit

THe Niri devs have a dedicated accessibility section in their Github wiki,
which is where I am getting the info from.

Yes. it's Wayland only.But it is silky smooth and works extremely well, at
least in my testing.The worst you can do is give it a shot and see how you
like it

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

--000000000000fac9ab0640b65f99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>So, stumbled on this wi=
ndow manager earlier.<br></div>I&#39;m pleasantly <a href=3D"http://surpris=
ed.it">surprised.it</a>&#39;s Wayland, but also has a goal with accessibili=
ty. The documentation states it supports Orca with the 08.25 version and...=
this is true. It&#39;s also got a very, very well commented configuration, =
and seems stable and viable.<br><br></div>It has Vim keys by default, H/J/K=
/L, it has several layouts. But the best part of it is, once you get Orca u=
p and going, and you may well need Xwayland-satellite (at least I did on Ni=
xOS), you just boot in, hit Super+alt+S and Orca comes up talking.<br><br><=
/div>But there are caveats:<br>|<br></div>1. The config is set for Alacrity=
 and Fussel by default. You could probably should, change those to whatever=
 you want<br><br></div>Aside from that, and a keybind to restart Orca, and =
one for swaync, hat&#39;s the only modding I have done with the config.It l=
ive loads it once you save and exit<br><br></div>THe Niri devs have a dedic=
ated accessibility section in their Github wiki, which is where I am gettin=
g the info from.<br><br></div>Yes. it&#39;s Wayland only.But it is silky sm=
ooth and works extremely well, at least in my testing.The worst you can do =
is give it a shot and see how you like it</div>

<p></p>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:blinux-list+unsubscribe@redhat.com">blinux-list+u=
nsubscribe@redhat.com</a>.<br />

--000000000000fac9ab0640b65f99--

