Return-Path: <blinux-list+bncBCLPHQH4XEIRB7FO6WUQMGQECMNNMLA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE737DA8B8
	for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 20:48:30 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-41cb900adc7sf48835991cf.1
        for <lists+blinux-list@lfdr.de>; Sat, 28 Oct 2023 11:48:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698518909; cv=pass;
        d=google.com; s=arc-20160816;
        b=zCakYDWApvjhnoB8CWpnEuv6cWDIG+WsJP+iWQChPVoet3R1v35HMUAHO0a24pF8dv
         37nEPMpezVR1YmVHIRTYohXIdL0aWkWhG+v7Gg3Mb/matD984AucC6Jy9ke+ONmWQOc/
         /LSPclPPjaCdd3o7/10kRRt0SxL26tLfH8muggMXxv+WXLGMwg10wyniNgpojaAMmz5X
         JAPq0vfB/NDiFneNXrE6MNE27jkTRhpxKuaRO6P0kCpR2JClmV4Hc69LTrqx39hyG9lX
         yUGyl0RV35/KFdYBsZDvIS1vvqjJSaCnQ6VIJK7bt6Kd7Wqa8jLIWnVTRvG9uxJZ8jI7
         0qqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to;
        bh=z6zBU4F399W9e5hKHE5hzLjhRYe4PV9fDRalfyN8Vmw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=uu8/o2tDALBsjpJxaX5jYUZh1M90vNEknYAk2nt8GqvfOldNa6c6SVGv0Rdmdjeywj
         ixii0A+uyfvOGz9ZE3cURGDQIrdrj9CBTOJ7xaB5zQvtQUf80jCwhxIs2unXNAYYkuPG
         Mi3F+9QmKb4H1WNaET5jmc/9K0eUVzICwtZj+3fz4MYjrRpHG8FGfkH+cXJwPwEFdHQn
         3bkMrG1i7J3qn8GldejXG1UoelMJ4CFP9Ew1Ho1/wvp8J1GmyrjQQbY2MLD2TzuN0sPh
         QMrTtbgoMK1GE/eCl8Fy0VTt1L75g9Us6eX/rYLbCs6E2CiC6eUyDWWdQ1MD5JHq2aMD
         l0Dw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698518909; x=1699123709;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z6zBU4F399W9e5hKHE5hzLjhRYe4PV9fDRalfyN8Vmw=;
        b=ar+dQd3GW6q3tHBew2OBb4LPKR5itsCWvOjnb23+HPr+b4IHK6rVUIiOVyLxGsP03v
         MnlSxcvehamCvlIq++OfAtBs2rtVGPKTTenqfwiyqn23OWpVu0lc4ziVuMSCEs9rP4Ln
         1rYMWyEC8JlDSzJY1JYf8Qsw5uNG4PCiPHHyAJEclu4ju8B9S6wxXaouP5ntyA52JOdU
         kVZP0H8t3w15oQvff5JybPARsB1Sjy+yemMtE84vbSfJAJaFGmSJssuCYdqm+cVDDYa5
         FAICeInYkyAfUpu/IVHdjrKxrTmv5OR/IFAPJ2zgsguar7gG7veUE6rOZiV7sXRN0QYN
         KvRw==
X-Gm-Message-State: AOJu0Yx3bILwmvji+t9qcPCZGDlziQkXR20i20k7TJ9lfyBJ6aTuPhx5
	Jnl2XtHczevFEEKGOUmaUQfzhQ==
X-Google-Smtp-Source: AGHT+IF4/qxAL00H+LjelYRlJrGNeCv4niU7Coq7RZ28F94fQwVDO7vpQ0iiRpVOjmUyER4kmAw6/Q==
X-Received: by 2002:a05:622a:50b:b0:41c:bfc5:dc6a with SMTP id l11-20020a05622a050b00b0041cbfc5dc6amr8632222qtx.11.1698518909244;
        Sat, 28 Oct 2023 11:48:29 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:41c8:0:b0:41c:d310:a7c2 with SMTP id o8-20020ac841c8000000b0041cd310a7c2ls2688397qtm.2.-pod-prod-00-us;
 Sat, 28 Oct 2023 11:48:28 -0700 (PDT)
X-Received: by 2002:a05:622a:118c:b0:410:92ca:3dcd with SMTP id m12-20020a05622a118c00b0041092ca3dcdmr13121642qtk.9.1698518908400;
        Sat, 28 Oct 2023 11:48:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698518908; cv=none;
        d=google.com; s=arc-20160816;
        b=N9wSGNZyCESqKnMFcoRXzRrcBzxpG6aAyW6qWVCkCNzWRtCxQvgtNHEsS8u9TBhd25
         bbYJ8jMWbaiWZI5GQQb4Do28YXVSmunMcmk8JJfi06VssF9Bvb5y14ShXe+2XhDVSoKG
         8tC5RrMb8hjvkaIzdFvooWvirdOmbfRstm1+DhjuKj3XGOO3c4bIxbjpeYzjva7msYRl
         z/BsEKuZnPAY8Eg7W6GlXB4E3GUaDLPSMg9Tb3P3j/Ssp/HZEmRAPFZzX+4Mg1dNSrTk
         PXI2sAvP4iDajZguPnkyzjxnHKIb7f1Wgt9jwK/yzACSUjh8OWfuFIIexwYPnRaiUCA+
         XfvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=cmiIDIdq1XWNyuZJKm3ApQEwu/IjItuTHtblksDm+yA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=jBKmB/9OecGMAlYiW5ltai4b/6hpwqzuuu2Y2p6YXmhcfj8EVkKa/Ktz/ljTm0aN7U
         WOt3sh+hue37N08bSWMYfSLRtcJjNQ/YQsf9IxbcMWZpOTkVQtyjAJAVHGtR8Un2/nwg
         BiZHlyNN66Bfj771TUL5YkHESc1jIdO8sf0ktRMzmzGDlwvq8vrmx81EmOMPdHOjz14j
         Mc0Ikv+DMxYYBUGnQYDoo8oeKhpVDlDtR13dgq8+fCLMRndzpUUYS6GPNR/347NVFEDd
         Rg83XbFfj+lJIa8gbd0vN4G7vdFbc7Lzip+WvR+3TAM4cF4vHaVowUpeF9nAn02n6HOw
         lLZQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id e21-20020a05622a111500b00418175f3a92si2812870qty.482.2023.10.28.11.48.28
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Oct 2023 11:48:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-315-HA7FgU2WMwKb01tFu_yzeA-1; Sat,
 28 Oct 2023 14:48:26 -0400
X-MC-Unique: HA7FgU2WMwKb01tFu_yzeA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 842042800B3E
	for <blinux-list@gapps.redhat.com>; Sat, 28 Oct 2023 18:48:26 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 80B47C15985; Sat, 28 Oct 2023 18:48:26 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 79A53C15984
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 18:48:26 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4A4CA2800B42
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 18:48:26 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-621-eexezslHOPq4vuyS3aKsgQ-1; Sat,
 28 Oct 2023 14:48:23 -0400
X-MC-Unique: eexezslHOPq4vuyS3aKsgQ-1
Received: from [IPV6:fd6e:ebcf:467e:2::1] (jpw.jasonjgw.net [IPv6:fd6e:ebcf:467e:2::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id F13B43216D
	for <blinux-list@redhat.com>; Sat, 28 Oct 2023 18:48:21 +0000 (UTC)
Message-ID: <60b6f108-a67d-4d86-83d9-5bef4f91aa89@jasonjgw.net>
Date: Sat, 28 Oct 2023 14:48:21 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Dualboot remember last used os question
To: blinux-list@redhat.com
References: <9accf86c-3ce5-44e7-8495-822f2f363540@gmail.com>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <9accf86c-3ce5-44e7-8495-822f2f363540@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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


On 28/10/23 12:02, Pavel Vl=C4=8Dek wrote:
> Is some way to tell the UEFI about latest os and when restarting, it=20
> will restart to lastly used system?

You can achieve this with GRUB, which can boot both Linux (whichever=20
distribution is installed) and other operating systems, including=20
Microsoft's.

To set which system to boot, try the grub-set-default command. In=20
Fedora, this has been renamed to grub2-set-efault.

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

