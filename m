Return-Path: <blinux-list+bncBCLPHQH4XEIRBNFP5WVAMGQEO7C6KUA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3847F13D6
	for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 13:57:26 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6d644bf1dfdsf4703266a34.3
        for <lists+blinux-list@lfdr.de>; Mon, 20 Nov 2023 04:57:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700485045; cv=pass;
        d=google.com; s=arc-20160816;
        b=HOqu6Tiv75ICpH1YtVx3Qor+v7iTR2M88UoC7Tl3+GKkGBHUrTX8chrjtnHrk2axW3
         ohB1lQG4TUL3cXsPPUar7PAL/5911/RHQUTx4k6/UWW3VQveSQ/L6QPcf7tZvhET2E8x
         zdDBanci6ELkmHlQ9pDhzZ7LcCqiClD52PUrBFlof72I3dw5fhUR73IWuw02YbsYE7dU
         xc09173KfnjXdggJHxB6ujXBCT04/yBmiD8qqcRGOkFOf1vkUsUGdvj468/CxN+FOvqv
         3XgrBNtTtjwjA/eoLTXXsZYn+L7GE0POFF+YTuRQhmfxfrg5aKtUZFRRdm3RLbkL+RKZ
         uHjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:references:to:subject:from:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=mW3gHaiqvHfT6K/DK+sJtD29pKptyFPB54iY1uP151s=;
        fh=dQ7ycx5tZVitDH6hl8ftPriVXRfWfDUI5epr0MEk65s=;
        b=Uze+Hj6s28//iJPGqLJEKQPMm29wsExjyDC3YQ0z31XNhKFhk/OzEsxJzRHBdUPM3g
         LO1fNdTaQHII++zHMoFJsH8UJsN4NqkDmOSGGo5fROc2H66LjODZAZ/XIA0YXRxJpleg
         JvReER+JSUEqTArnALDRSrlCS+MnLv6O84PwyHnSorUZ6K56YD5NcTpE9zsfIwtUlI6o
         4Cxcu/xVtRQk4E41jGslRYsMOLSAWXouaORbV0BTSue5eUAl87kW1ehQs69Asxl13ACf
         qVT736otRuoB3DadBjyVVJim9IoU98hOZc2iBX/J29B4WRlvs5tn8VduZn5gr+9TwQG7
         maug==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700485045; x=1701089845;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:references:to:subject:from
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mW3gHaiqvHfT6K/DK+sJtD29pKptyFPB54iY1uP151s=;
        b=vGvqrIeQckRdf0fyKNyqMoT04AJytLssSAOV4osFTFipJs7U0Ou6+1bnbmxVINLpEm
         KbnShqQ29gDnfBXZpfFDgFk1SJSfFeXeare539kGb0YlT5bzcxRLt514nk0AyPSyBssj
         B/1zP61w+0YD5lDpjleRtaqNQVfW7NBF/cpyPFuu+AT5Av0vxB4OLxccfM+SBjm1hodo
         wOuCCE2+Ccj3baJakHxJ2uJqk16N+EKcaQW8gKAyn1raSyWzglgSYetQm3/174SNeH2q
         0sK1n2mtX4qwaxQvEFmjFtoT9oSzDMY3+IFI7npIR0orySdvbs/zsm1BxzZvQbX5Kx6K
         FRcA==
X-Gm-Message-State: AOJu0YwyLiJjAFj9suwQ0Mh42Xo8xTs+1mbB/FhfeMGUWUtAN0KEtfCd
	F7SzdHrtbXYaanQvh4hDltt1mA==
X-Google-Smtp-Source: AGHT+IHVzowLDA0KKuJCI9gmgpndpjS1mM0Lon24IYxv3vX/xXW5F8+jHNXNzmIE0+mY7mAcQ30ABQ==
X-Received: by 2002:a05:6870:1811:b0:1ef:b669:ba1f with SMTP id t17-20020a056870181100b001efb669ba1fmr9075621oaf.8.1700485045228;
        Mon, 20 Nov 2023 04:57:25 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:de18:b0:1e9:9551:4f75 with SMTP id
 qg24-20020a056870de1800b001e995514f75ls22459oab.2.-pod-prod-05-us; Mon, 20
 Nov 2023 04:57:24 -0800 (PST)
X-Received: by 2002:a05:6358:5e19:b0:16d:b1f4:3a0 with SMTP id q25-20020a0563585e1900b0016db1f403a0mr8167159rwn.26.1700485044303;
        Mon, 20 Nov 2023 04:57:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700485044; cv=none;
        d=google.com; s=arc-20160816;
        b=Do7gFqYTNCMcfF35/cJonx2Wwpx4d36SOANQM5Pse8JjLtd6V9Nnn1j/FfNrOKUEJT
         uxaSa51q68JmtJz7NGnTV9n/Itk0GxQxIQ1gXFyiQaumR5HwYh56oLgWFShPNGVi7A9y
         IbFwPUSBCxrD7w/2bXw2zU8/tzh4sOejExeCgrJOTsO+/iQ0nEDOVlDL+MHhUCMAFOk6
         /wGOgVR26p9wI7n7GJrEH6UQCp9a52F52ukOEJzFMtUTytN7BNR+L4MoYIuAEg/giJBW
         ElOP41VPQPuBl1w89gnxrBcaY6hl5b43eP/ye/i9EYjvzny4Qm0zPtgjpnQsF9l0nQln
         ncQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :references:to:subject:from:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=N/jud32BICJdvNK9tkbSn+ueRc3U9Ru/gGhRbzrPk5E=;
        fh=dQ7ycx5tZVitDH6hl8ftPriVXRfWfDUI5epr0MEk65s=;
        b=b483NMIkqI8StDznpb832ITv57IXUG/XwBid6v6l7m9s1vkeBh98Td2eJBOJlSsa2s
         IL+5h+iqvuELqAxto3aIKjbgEOS3GZGCWikQfRvhzJFPxiZ9l/BP0Glxm/hzHCTILUAr
         uXY+yhqWWq6MtKk2Bkuynhu2Lv1BNfYURlRfBTEidKd7ZEk9/zfRmeVXMRadMc+DzqRx
         3C7eZBbWWZqDx0uLelFKZ6iAP+iLHhC1TazBgwaK+k1cHoRrGrlCCBF2IXKEoExJsijc
         NfpUgrD3zl2QqNrEnBQvwZTF06YjSMJHzMgJVdecLMS28Nc4yQ6FEw0dwMH35cb1Z7EI
         wL7g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.81])
        by mx.google.com with ESMTPS id e16-20020ac85990000000b00403f0dfedb7si7269303qte.193.2023.11.20.04.57.23
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:57:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-531-FDctl7GYN0qBwKkNmgYuTg-1; Mon,
 20 Nov 2023 07:57:22 -0500
X-MC-Unique: FDctl7GYN0qBwKkNmgYuTg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8829D3C00092
	for <blinux-list@gapps.redhat.com>; Mon, 20 Nov 2023 12:57:22 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 852C1C15983; Mon, 20 Nov 2023 12:57:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 7D9A2C1596F
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 12:57:22 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53F061C05AF3
	for <blinux-list@redhat.com>; Mon, 20 Nov 2023 12:57:22 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-428-7yUxb0xuPhGhuoTiJDcUHQ-1; Mon,
 20 Nov 2023 07:57:20 -0500
X-MC-Unique: 7yUxb0xuPhGhuoTiJDcUHQ-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 4360C321C5;
	Mon, 20 Nov 2023 12:57:18 +0000 (UTC)
Message-ID: <e8868259-dffa-4892-9547-007c9db46b65@jasonjgw.net>
Date: Mon, 20 Nov 2023 07:57:17 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Subject: Re: Connecting to wifi in LMDE6?
To: Jude DaShiell <jdashiel@panix.com>, Jessica Dail <jldail13@outlook.com>,
 "Blinux-list@redhat.com" <Blinux-list@redhat.com>
References: <CY5PR84MB3051475D0C7DCCE86B6424C2D8B5A@CY5PR84MB3051.NAMPRD84.PROD.OUTLOOK.COM>
 <67f253d5-5702-4412-8f4a-5c95d23ef907@jasonjgw.net>
 <934a9424-ce79-0675-0fed-bc3c78af1de2@panix.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 xsDNBF/xBRsBDADlVy0XG2HBtn9QyhH5yfQ+V5QwBUTBCMvguxy7FP2FaRB4eWfzEcqlK6vm
 zg9+26qlMfrnLqsv5G2XAbPYuPMmPSnQgRxXr855Dx369wz5lwioAEaGAGu9/Q8nG/y/9svf
 ZFkA67LDk7au9AN0+vZu7E6c0IhmirvjN9BxRLvGq8jCNdrR9Oh36y3UevZnpFUBD8gOqdPt
 mJgMXbfYSrEWzEqDcTOlG2o3ppyXGaj2aLGmyGUtnqK4DWnYCfaPyZaKJ1V/7SvVJ2gXvco0
 BEeP06rnbJf59ssg3mFv16XLxEEwPjG8g8BiZ4Csf6mGtIJ1HPSc/KNQegLxc1w6sOzs5TQo
 pYos+kT08lapoBwXhqSKjEN3swdh30v/s46CxFTcD6ksthgDZeSftNbcD8r5u94vIVP11GDO
 nPRMdZQIcyuNpKl7TqYb6pZOOWq7Yxmva77rV0WDmIrUI/V14ZN0r+PheGgp/4mBM/sueDMh
 /6ea5l3GuTepsOcwtSMZb6sAEQEAAc0gSmFzb24gV2hpdGUgPGphc29uQGphc29uamd3Lm5l
 dD7CwQkEEwEIADMWIQTqUmUTWtPL6lh3Yvx4WzV0iFry7QUCZKn3lgIbAwULCQgHAgYVCAkK
 CwIFFgIDAQAACgkQeFs1dIha8u152QwArR9WmCmFL9r6Kna984Dg8ZE/aRQ9L0I64wmWTrGW
 9OO2a6ouRU1XdqkA3D1PoZzZ22Czcjn5BXZkZIOshLWIEnL9Ey/Pj4Y4+PanKOOU1tKsF4bA
 kteR7RajGwLiVsjAL3E6SB+HS2NwuA99/tuIOiumnR95Xrf6Fd3RTPMCoDXlv6hBDg1lmV5x
 3MlSO0dgRZNahpJ+syIKy74FdGKWrZLND1yB0Pmz5SvgPglvGEAvBl5EgH0ha/s8AT/fTYCb
 GSH0FPU60RWXQdG0ou0mOnUB38nwwxoID6KKw7Ba76IZgex4K6QZiN60wV5zNSTQi64xyu2S
 m6Z1RC40tKPrEkEfhAVamvF532FukF5oFpu26K5RZmR7hIc20upn1NigJNBqbFd92MptGktZ
 0jC3JSW8nEuRfCPp0pQazbu5M14wUKsjk5adG5tD3FnNicE5k1wOTMJIQPMl/X9KDipkmxDH
 4h/wB4zD/Gqn0rz3KzV0KucwpJm9vfDW0sMm729bzsDNBF/xBRsBDADd/3voDU1gk90zYHXG
 X0KWaAztsmCtqG+hNFShiEX9aj/y1nX1Fdwmm04ZiLPLZ0Ogsa5zDrikTnabYxo6z4Ej2TAR
 OMJLEo5YiT3J8GGHljqVh+LuGBNgF8hnrTvDqvhHL4+jTSIdeSqa3FhL9jiCfDpSAWABDHM0
 FxGMl6lMiS+DhTpRQs0mbJ9Sb7yYBoYzt9moFG7+v/dH8nG7C/hy7bqOPTeBNCUj8ceOQMkQ
 yVnjuipaxj5p8YxQA+SNqSTAA/SNoYs7v0Slr6oAkTnM30p+r35zX3RGRIqfduizy5Uo/ZGd
 T8XOfE++0fI4A5iWQh7q06Yn1jG/5WY1L0N2wgKF53SckdWYMHa9hrB+lzH8azMeggsgrOW1
 +SdbpF6kKSGTiQytchadJ+q8xtiLiDtbNdV79o7OvgrTVW2dpJ0zDyqdUvwQKHgczd4GFqDj
 FOTDpzOK92lQVswwG1RILdcSe29g0rdzrVEw7Y+RfFUn2Hl8fHIOuvtvyPqdnb0AEQEAAcLA
 9gQYAQgAIBYhBOpSZRNa08vqWHdi/HhbNXSIWvLtBQJkqfeWAhsMAAoJEHhbNXSIWvLtuMIL
 /0eWg3rtJqq57TVvSKZKtaBBDtxll0FFykWkIQKSzxoLBA7GcmPz3avp0NgzQdHOEjIwQ2Dk
 IWO0iPyGPrzjAM4jps0pEkI6UofXWDpPuBjY7rYqnGcp1iPsAdaaFSYMQYUgXaFEW/9lws2s
 wipaUkUiqOT0tCEv+9NF6oB/GRJo9q8K2vZ3Hv2/YFQPmFB/2Qu6pFjCMHs80rscoIO+YLlP
 wV6+FzkknTewSVrGRJ/OYKCVdaIu3GD5gZkeDqMgAHZ4gy41uX9nM2dxv2+1wAUaQGwLL30K
 WvRqI9jAA2K3IPGuTPHIVK6ADNymKJ8Uw3yJNLbsthEnjeXIvkQ7PggQm/qyME8NNS6mVSPW
 TWzS3JUV+O4jT1qBM6r2TnCBdxOe/NVcFR0fYwxXRl3+n/dehU7QAWMDnqvBRQ5SMTZyBK1K
 76SANvwEOvlkI2yEBs8mL3WxxPuliybrtxz4qF6aT/D3NSadxiuS/FXl5Xx55n4jNHenPpY+
 Jlx6Ar305Q==
In-Reply-To: <934a9424-ce79-0675-0fed-bc3c78af1de2@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
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

The first two examples in the nmcli-examples(7) manual page show you how 
to list the available access points and establish a connection.

nmcli device wifi list
lists the available access points, then

nmcli device wifi connect SSID password PASSWORD
where SSID and PASSWORD should be replaced by the appropriate values.

An advantage of NetworkManager over some of the older approaches is that 
it can automatically connect to a configured wired or wireless network 
depending on what is available at the time.

On 19/11/23 21:07, Jude DaShiell wrote:
> for NetworkManager, I find nmtui easier even in the terminal.  You run
> nmtui then move around with arrows and hit enter for your selections and
> once a network is connected it'll have an asterisk character next to it.
> Once that happens find the back selection on each network line and hit
> that then downarrow to quit and hit that and you're live.
> I'm starting to work with iwd here and will make some braille notes on
> that in not too distant future.
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Sun, 19 Nov 2023, 'Jason J.G. White' via blinux-list@redhat.com wrote:
>
>> On 19/11/23 17:51, Jessica Dail wrote:
>>> The only thing I'm unable to figure out, that wasn't mentioned as part of
>>> the installation process, is connecting to wifi.
>>> Has anyone done that successfully and might be willing to assist?
>> Find out what packages are installed or available for installation that can
>> configure the wireless interface. NetworkManager is a common option, but there
>> is also iwd, and, recently, systemd-networkd.
>>
>> You should be able to add details of your wireless access point (SSID,
>> encryption password, etc.) by editing a configuration file or by running a
>> command in the terminal.
>>
>> What you need to do exactly depends on the software you have installed or plan
>> to install. For NetworkManager, nmcli can easily be used to connect to a
>> wireless access point.
>>
>> In general, good resources can be found online. The Arch Wiki is usually
>> valuable, even if you aren't running Arch Linux.
>>
>>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

