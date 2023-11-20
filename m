Return-Path: <blinux-list+bncBDYPVTOXSQEBBT765KVAMGQEVSDOKNQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4B37F0A72
	for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 03:07:13 +0100 (CET)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5ca2a6f07b6sf8554347b3.2
        for <lists+blinux-list@lfdr.de>; Sun, 19 Nov 2023 18:07:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700446032; cv=pass;
        d=google.com; s=arc-20160816;
        b=rRB7hK/1hAAl2+ZvdKbWCzxo/B5Wg17ppKG8EpKzwFmfe7H3rEV7vq00otjkS1nOAm
         BgwzHCY9DbO9Wpt5QgmXgaZsR16CZOQJvLGjKBILZk43go3LrsZ2B4096ZvanzBhoSBu
         wfqKSjO0lY1thl17JrlGCcUt4DN7Cn88u3c7HhgZWM5V7s/SLSbLi2DVoAlifEcQcwfI
         zaUcNSLuQt0Q3sSGEvP4YdW3ooqTSUdRrFWDXL1w7QfT4lkBswzU6AdYh/CuT7+xwhhS
         JlyqQ+jGBavn9pImp9A6tmN+0zpjwnYOM+KN4/5L+rX4v8T8Ejw+3fMEKXcoNLw/KqSD
         4btw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=H5CKPl1xwg1/SYBd94bZVIzd0TygUFXnUec0G/GGBw4=;
        fh=g46QAUMdRB23zEejcdMCnqC7IKkCvnlyf6QDZEU7TY8=;
        b=g63pv7ZWXsFJstOiNBNCgwrfiMdEa6cAkE0PjqhXsQ9UJCrSU1FCjXd6Qw8+Oa5ZaO
         h282iwQfQ0uAsghqsKqBVXD0BlG3HTreopOtoRQrGo3iuHLLSYOKFwgB31R3tONYZmF6
         mzLptdgU4tVXWeO5HlddTlm3PVeWI0Hh2KJx/xehI6IL+9SEeVrURut3YJ1mINcRdUDh
         +hHYO87dEvulxwqRiMtPB0ikt97+2hEa20P800Q0g0XFghgCJBTMXW21O/+oMNfKr9iv
         KJshOJKUe1Tn8YReC8sbehmLzlVla0jNzLY9PuLkjeZfQx+UhveBNRcMmJ58/rji3HYf
         PyPA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700446032; x=1701050832;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H5CKPl1xwg1/SYBd94bZVIzd0TygUFXnUec0G/GGBw4=;
        b=DsNT8PoG+c+zK+TqwzClBJh0x3JmdnvVXhMHebz9n0bdGhPPA42Cl1anzPJ+dBleGz
         1frvgzB+MnLVxzv2KwzkRP+Xfz8OJ4zppwg6twDqXPyr4Z4ctbh954mjof69Nes45jE5
         gVroWs80NAcDsloBA4KQNhNf9sGl1FszWdg19vpBKl3hB+WhrVks4OGtRXOSzqlv4CG+
         9RMmLsvPndsKHzEXUsYNHQz/meFV6Fm+oljv55HKr+z4Yvru63QRiHJK5lTvdpu5tjSx
         5Y9xOJKbr23vxCUyS0RQc0U/CtjM248iCOWSbY1NZt9OkseWm7wCdVnroBq+nHmUAKFc
         VSRQ==
X-Gm-Message-State: AOJu0Yz48EpGywq09yBEC2ku5gMrvbR68rPwR2TrOoO6UgMbvdx6Th0r
	WkMyRBX2MGpG1BMLwhGhHYtqjw==
X-Google-Smtp-Source: AGHT+IExgaRYNgFsPpY0osc5wVFRYQFw+wa4t/Gk4Kr2PyHHmrWdrSIv24DaBu8h5aS08lJrK7vysg==
X-Received: by 2002:a05:690c:c9c:b0:5c9:8366:33b2 with SMTP id cm28-20020a05690c0c9c00b005c9836633b2mr680329ywb.44.1700446032237;
        Sun, 19 Nov 2023 18:07:12 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:becd:0:b0:677:e7da:9886 with SMTP id f13-20020a0cbecd000000b00677e7da9886ls1604857qvj.2.-pod-prod-05-us;
 Sun, 19 Nov 2023 18:07:11 -0800 (PST)
X-Received: by 2002:a05:6102:1085:b0:462:9efa:77a0 with SMTP id s5-20020a056102108500b004629efa77a0mr1713471vsr.11.1700446031331;
        Sun, 19 Nov 2023 18:07:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700446031; cv=none;
        d=google.com; s=arc-20160816;
        b=iX4U4IyMcNlGM4mXT07ZOnJtMkUKmCqGzaKwJp0jRlEcoijxCrQK2ZzEe9wXfnWKEf
         RVTV58JUSjcq0XGEuOP+rRnC+MjjSlXfMgaRkDUMZnDYDTOtk9bT8jztmtXPrc9ZDnhO
         1G6ZpS2dSoKKESdWieuCG9F7D1T128e6klGZ/dmvDQCAHive/EQ8PdxizrdwieXgIMCk
         u/btWMcoxN5jECJmTAR89rE9tdHeRwpaI3bdLJSNxLj40UHoXcJbl4JpUn1phtaBmBRX
         AuBr3LrYR7nvmTcHhQzz4ZC8mibRO6ep6bc1nr08qhlXSGIoa69svQRNXHR/dMA3QKY5
         407A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=fe7pg+pzor31PxGRp38ssllXa+4LJg7yfqbTnWTtyKw=;
        fh=g46QAUMdRB23zEejcdMCnqC7IKkCvnlyf6QDZEU7TY8=;
        b=Dzh/RMyHRV+bVj5wAk6qrIrgil9nPQW8vc7isnXxHfqIUT/nNz5NUjeFWA65eu7m4V
         gLSUlndVELELe9Bh44c4B5NF6gfMDYV7sVzPF4uApBF5AwbH+G1jFgjZm5ZDBpvTY+fn
         PCxXyjOIxFPwaFgkWqr/DN4icjR8rMmBq91LoPgY/7Ex3Gl1egxSGB5vWH+e70ZzTPj+
         YgtA8OJZpKfd2FDAM1qjuH8KGGHDvL2XdYzAixpmSKbEUfTxlCJnFM9jhC9RPfFNCbP/
         ZMqJTJ1M4OM8NSD1i1pdiL68LWeHSM+udh13TWdO8lZRcR4hXOv+/irtLkeSFb/Py7Gk
         f+QA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id j9-20020a05620a410900b00779d587d67esi6778833qko.698.2023.11.19.18.07.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 18:07:11 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-652-TVWnFZWKMfSVBMvL8OiPWA-1; Sun,
 19 Nov 2023 21:07:10 -0500
X-MC-Unique: TVWnFZWKMfSVBMvL8OiPWA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B068F3C0BE43
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 02:07:09 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id AC9751121308; Mon, 20 Nov 2023 02:07:09 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A41881121306
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 02:07:09 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8274B80C344
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 02:07:09 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-Z7D9VkJ_PbaegBmt-yEawg-1; Sun,
 19 Nov 2023 21:07:07 -0500
X-MC-Unique: Z7D9VkJ_PbaegBmt-yEawg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4SYW971zq0z114y;
	Sun, 19 Nov 2023 21:07:07 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4SYW971dK7zcbc; Sun, 19 Nov 2023 21:07:07 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4SYW971VVSzcbC;
	Sun, 19 Nov 2023 21:07:07 -0500 (EST)
Date: Sun, 19 Nov 2023 21:07:07 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: "Jason J.G. White" <jason@jasonjgw.net>, 
    Jessica Dail <jldail13@outlook.com>, 
    "Blinux-list@redhat.com" <Blinux-list@redhat.com>
Subject: Re: Connecting to wifi in LMDE6?
In-Reply-To: <67f253d5-5702-4412-8f4a-5c95d23ef907@jasonjgw.net>
Message-ID: <934a9424-ce79-0675-0fed-bc3c78af1de2@panix.com>
References: <CY5PR84MB3051475D0C7DCCE86B6424C2D8B5A@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM> <67f253d5-5702-4412-8f4a-5c95d23ef907@jasonjgw.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
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

for NetworkManager, I find nmtui easier even in the terminal.  You run
nmtui then move around with arrows and hit enter for your selections and
once a network is connected it'll have an asterisk character next to it.
Once that happens find the back selection on each network line and hit
that then downarrow to quit and hit that and you're live.
I'm starting to work with iwd here and will make some braille notes on
that in not too distant future.


-- Jude <jdashiel at panix dot com> "There are four boxes to be used in
defense of liberty: soap, ballot, jury, and ammo. Please use in that
order." Ed Howdershelt 1940.

On Sun, 19 Nov 2023, 'Jason J.G. White' via blinux-list@redhat.com wrote:

>
> On 19/11/23 17:51, Jessica Dail wrote:
> > The only thing I'm unable to figure out, that wasn't mentioned as part of
> > the installation process, is connecting to wifi.
> > Has anyone done that successfully and might be willing to assist?
>
> Find out what packages are installed or available for installation that can
> configure the wireless interface. NetworkManager is a common option, but there
> is also iwd, and, recently, systemd-networkd.
>
> You should be able to add details of your wireless access point (SSID,
> encryption password, etc.) by editing a configuration file or by running a
> command in the terminal.
>
> What you need to do exactly depends on the software you have installed or plan
> to install. For NetworkManager, nmcli can easily be used to connect to a
> wireless access point.
>
> In general, good resources can be found online. The Arch Wiki is usually
> valuable, even if you aren't running Arch Linux.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

