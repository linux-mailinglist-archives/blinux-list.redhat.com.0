Return-Path: <blinux-list+bncBCLPHQH4XEIRBG4W2O3AMGQEP63N2CY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E48967C05
	for <lists+blinux-list@lfdr.de>; Sun,  1 Sep 2024 22:14:21 +0200 (CEST)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7a809183f6fsf379133685a.0
        for <lists+blinux-list@lfdr.de>; Sun, 01 Sep 2024 13:14:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1725221660; cv=pass;
        d=google.com; s=arc-20240605;
        b=PbcrMfe4Bi/bnsG3vctx4cEUaplXO6wW0XdzV3iVnvuF8iY8QgHoxuzNDiii9CN4fe
         9AUimTxBrt94HEY0cGhMTEZ7XCoCz4o0AOt/hlDGx/lbzwscxHlZ4hVOmF1DcMBp51Dk
         UfBNCQywrQbQN0ktr8Ykvf5dVPdy5JDOanUk0GnnXjj3RW11tWGWsRxbJN6i/cOAvfwN
         kKCgMpI3SALWth9EUASttnj6wRF95q9Wtf22+dhsY+9Nn2PD838dd3dWS75TcWeckLtS
         17gmlpdfV/IPCc2w60YqRaCv6qczzd+tjnqAxB+juVdkgUv2LKlFFWAFCLmZP/YRf6VK
         NxDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=9hQRMb+D+qjMzDKdFt1F/CfTIP9tw1sS8eRcMEgBoQI=;
        fh=fvd+2KULXSIrn+SAegLhN0RQQi6fjSppxQ2LxklpODQ=;
        b=Hy/yOy2j0UbLGoW3jz1skqiUTPSoprFxcuaXalYMYY/UlL64q2YRiabHB+1clFLX7B
         VwKYW5LsR4eElIQ+6yJVLCDL9ioWTNeCQZWGtqUrp+2FbNMK0ozOsHj6DYk6BljyNC82
         xlFEzq12gsrniQtLzGQ4wjMIYe1cObHUnS1C2GeaT/CRJpDjHzHFp03A57/ff5Wa5rk3
         wV7/pxEEwpjiR6ztghNQxhrIAGaNDNZFTJktTqsusNny5/7EVHBlx2uVZPh/X3tocOnD
         eXXMR00+0bFuIdEBwcGuXju/MyI/WQ39aneUENpZ4E35fKajrn+60nUS6gnOXB8/1npk
         dqaQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725221660; x=1725826460;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9hQRMb+D+qjMzDKdFt1F/CfTIP9tw1sS8eRcMEgBoQI=;
        b=ZsPFgLb/B2++EIFOHkt7O0/ZpyidKoVQOX04gIS7JTxgFhWSBTl35dUT8MoReC6Ip0
         RvuK/QLs+iQ5a7PSE3LD0cZEc7jnjuWEEtRRByUe3jmxyCgN4VoWeuCCPSZRybCCwBm4
         xon+P3Zqu1dBzhvdXjB5ANJGXUzywB6mbd8FBoestpiExjNPvcVA/EeZncthkASVRa2D
         giCDRUCQ3XQxXjJS+BlRDTyjFruSq9Oi6X81CEm2Y6ZT9Bk5UT8ItqhmX8mcs2FWz8hg
         +D6GpAzYR5rvl5icjfP2njb7RSvpBU5oo0wamaevdXosKchC8kV4PrtzXFUlskxV0agk
         NwnA==
X-Forwarded-Encrypted: i=2; AJvYcCWRavujHtTXyhD+Z6czDimBLXl4BJ6tI7411YuHlRhD7XmGB4QToBu5csHDFfTamipZdzKOvQ==@lfdr.de
X-Gm-Message-State: AOJu0YyUB4nOyzioGPgodEZLG+wrT66/0V25kU8VEaWewN24Qe6rhAgb
	AlZ/FPRh+5nHEu2GF+hOHYjweBuc5uv8yRv4ROurzydP3kKlyM3eJ5SSMWerjTA=
X-Google-Smtp-Source: AGHT+IH8BS/mNot2m5aWAIros2GYq5tE0mtbEYnAAWdJSsEl4iPwb5nvcASWmgRIuBb2pCM5gCBeWw==
X-Received: by 2002:a05:620a:408a:b0:7a2:e6c:41e7 with SMTP id af79cd13be357-7a8931d94a5mr703544885a.9.1725221660323;
        Sun, 01 Sep 2024 13:14:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f4d:0:b0:447:e719:3e13 with SMTP id d75a77b69052e-4567ece6ac4ls34150321cf.1.-pod-prod-06-us;
 Sun, 01 Sep 2024 13:14:19 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXd6SUy7nThyPasaViMsr1Yxrwrv44l5A+AvP85QyzAaCPXt4jh/IUDRWSMZpqg7HkdwugqlNbEVcGy7A==@gapps.redhat.com
X-Received: by 2002:a05:622a:2610:b0:456:7ccb:6767 with SMTP id d75a77b69052e-456f166a24cmr74803731cf.11.1725221659170;
        Sun, 01 Sep 2024 13:14:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1725221659; cv=none;
        d=google.com; s=arc-20160816;
        b=TrAL9Ds3c1rUTKgGpYDm3pBgtFXJb1qwi2l/bAouGtd1UKoA3GgG6sGKB+FCvUWd8n
         Gar6F+XN+yFjYE6Jmu7fMOYf1Fvmq77C294N5GwWJ8aSTwTZNxQhsk9OoUMqng4mMOiK
         KFh2KCE4CsNVwtB9PIwHeODtgUlXLnaubVs2VtmnNSdRFJKymzPsaiDVjKmPg34QXaNV
         qLSFFA9R+odK/Lgeyjyac9q/WaDNE+mctg15pQtzoL6B+WwRqes5aUp7r5n5CEaXQtJZ
         9Ut4gGBnQw5/8LCx8pI4NoghXy0n3eod+mDKlIPB5u7g8F1NXqETjINqcGLtAUdWzoBF
         TM2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=WK9CyI4KFhFJoHNKX31witPOsHfvRB1F63leZ2AXSn8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=rLPysaeLD4F2rf1/xpWZOt0qsnbOuqPbyRx7XfgCJmb4RKqOkA/QEuT9wHFxtVMD5D
         eEwwFOATRd8wb9LSYmdW76+DQZ6P1APnXVQqIm/KX6QE6qBpQfq1sAmyvx/GNPs15wtQ
         SS2wXefQbq0vkxIkuCEwW0ZKMCQZstRpO3FOG7Whe+W9sCnr8gBweBKn3cVi1w6A6AgH
         SfdeM/K7iaCOXabya+GDOd3j5GUaKVpXvz1MqP1qJdEnCiBrBXCjs3Xar2qvr+/jIF1B
         Hlu73XQvVWQ/jq3lj1eAzoE6QtZoidIZyP58jHc1TisK28akRe960ve48QMToGur01H+
         084A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-45682c9dee0si57389921cf.201.2024.09.01.13.14.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 13:14:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-270-Zytjq6VDMH-siqsVQUfuxg-1; Sun,
 01 Sep 2024 16:14:17 -0400
X-MC-Unique: Zytjq6VDMH-siqsVQUfuxg-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4F3841955F43
	for <blinux-list@gapps.redhat.com>; Sun,  1 Sep 2024 20:14:15 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 487B619560AE; Sun,  1 Sep 2024 20:14:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 45E5819560AA
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 20:14:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 99B981955D47
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 20:14:14 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-348-Bfg2FHtQN6G7_B93HfRHkw-1; Sun,
 01 Sep 2024 16:14:12 -0400
X-MC-Unique: Bfg2FHtQN6G7_B93HfRHkw-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id 5CAAC320B4
	for <blinux-list@redhat.com>; Sun,  1 Sep 2024 20:14:11 +0000 (UTC)
Message-ID: <a2ee7221-3ea3-43e7-8500-bd720658e682@jasonjgw.net>
Date: Sun, 1 Sep 2024 16:14:11 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: no PC speaker beep on startup anymore
To: blinux-list@redhat.com
References: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
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
In-Reply-To: <cc05931d-51da-489c-93d3-b8a831598ace@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
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


On 1/9/24 10:33, Edhoari Setiyoso wrote:
> I notice sometime ago my PC stops beeping when booting. I know it's 
> not hardware problem since running debian ISO installer I can hear 
> double beeps.

If you're using Grub, you can configure it to play tones during the boot 
process.

For example, in /etc/default/grub you can specify the following.

GRUB_INIT_TUNE="480 440 1"
If you're expecting a beep at the firmware level, then it isn't a Linux 
issue, and in that case it's specific to your system's firmware or its 
configuration.

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

