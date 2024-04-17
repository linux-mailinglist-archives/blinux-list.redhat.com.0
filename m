Return-Path: <blinux-list+bncBD6J3OOK2IIBBJOP7SYAMGQEMF6GHQY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E208A7A2F
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 03:36:38 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-69fffe64b6esf12797806d6.1
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 18:36:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713317797; cv=pass;
        d=google.com; s=arc-20160816;
        b=cUslwdZm7cjTPJTslgiIr6MR/UtwuyJTCeNEe/gJ3Vch2ZR1HTtb35TdfY59wWwfX6
         9hN512hlLfFh7aUDn7NpsNFQP8LRssP8ZCIW61P/xUdVk5GTlOO+nzPiZ0PBKAm4cyF3
         GnHH7QZ98KWDDdNIjSdaS8DCLrc+fR13mKMPefasT4dCYqA35Y1PvES+YAr+sAU4Gq9g
         OgToMC08x/92hmnumuh7h7ZiMbhBsdhHw4iuP59IZmxPjV0ZgQUf0NKsPSlnIf7J1faf
         hvrSE0UACxZyXOD+/QvE4m9wf4fuxolgRgnGPXP+OPoxs/3QHnV+PviHJHTFHVvrbhm9
         fPDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to;
        bh=C4NcP0AsYa/IWNwxdcf1zllDY92qhqI7izedCP4sRaY=;
        fh=5uGNeIGXUXPz+TGWub4U/LMXHGdgw/N7asNHMXhN9Kc=;
        b=TvKIlZsD3xUlAgYFthh7Mztgyd3W0OdnHjB7LUuq0dD04rZM4dVPRVX2Qt/YBqxiuG
         NIhOnmK2UgyVsFVKKH1Uk5grlF5uIISG8JaGqLTv1PaLb3zXox+tNAgIi0OslDy7urbd
         MGXJQZCVdGMQmt8XTqTcJsyziEXb7VY6vatjVRWK9Zk5o0474fOuT8KV/SMmXvmMZ4kl
         1F54bJ0aqmt77WoGfyxNYp4++AzAun8fob/UbnPF4QUCey5I8vs/uaXR049tcv3RzdRN
         FUe0rDv0x+acA3Is5ZlXcCnxI5R2UU3V2AHWsL+g8LNTRAqdLuW4heZNOCwgUSlTWVu/
         QmMw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713317797; x=1713922597;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C4NcP0AsYa/IWNwxdcf1zllDY92qhqI7izedCP4sRaY=;
        b=aZKwp/YgsVPBTFF/+0aRKkyzqNlCfOsXaC/0XESgTWhoZZl7FtiC3I9g1i/je+JdYV
         loOflB+Kk4pDxuSwD4t7n2/wdnlmdx5uvw8CHXuTZT/LrCo4DGLVFOjQ86iYkM/F3ltv
         fOZmc6nS/P0+L2QcGmWfdvQeyh+4ifPY5I6CND8wRNHHejv68WRlEBr81VgMCEOnXIGj
         o18iVqzPVqRGYj8BXZj+tS8TcA4zeo+CdUvDA2Mq7Lh0URTQ9VdvIKISRFxuK43hrUig
         KNT5OZuvDWD0GqAyo5b/FBaAca9f93MAUeP+mpaCZ6ybL6okgBRHvH7FFP8b3wGxAjGj
         J5WQ==
X-Forwarded-Encrypted: i=2; AJvYcCUa+7dfLfRbzewfjDNV24uX7tqGQ0Xb4pKuo36VXF6UdSOFHtA44oWseHt6zdg3mqGrr3Y+aRWQUORqe733QXTciq0V8EC6d3wT
X-Gm-Message-State: AOJu0Yx5JuBqVKvQVaSye8jdTteWsFWv0PaZ+Qu3RG75veern9mUtoJt
	6xuHJuDiUaCOvm2iBvXWcS3tbDiXM3Bv3Lp10wY3Y6ZB2SbXJheHHHIfx4O5PhQ=
X-Google-Smtp-Source: AGHT+IH9n/P9GAZW3FYa7RF0Fisca3eI+9MryfXYPPCGW1tkgrBikNhHcqHzE1YwIyI/ScnX31bcAw==
X-Received: by 2002:a05:6214:182:b0:69b:bca:2054 with SMTP id q2-20020a056214018200b0069b0bca2054mr15039921qvr.61.1713317797423;
        Tue, 16 Apr 2024 18:36:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:19e4:b0:69b:197a:3a87 with SMTP id
 q4-20020a05621419e400b0069b197a3a87ls6452488qvc.2.-pod-prod-01-us; Tue, 16
 Apr 2024 18:36:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXnFBlheA24tGeOcGi5H3cxvB1r0MrUMVhoNZgAmGficdv/4+gtzA7v+z60MdZ8NansgrNZBJC0W/aj92qjt6fMfqf7ecA8X84r/BkK
X-Received: by 2002:a05:6102:3c89:b0:47b:8c4b:1054 with SMTP id c9-20020a0561023c8900b0047b8c4b1054mr7428572vsv.3.1713317796666;
        Tue, 16 Apr 2024 18:36:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713317796; cv=none;
        d=google.com; s=arc-20160816;
        b=iEPUw2Q8X/5ncHkiWfq/FJx2xM4xXSrjb0qDZzY3sywPfSZaDaRsY3ZxPrulnX3UlY
         XPIWNkt6X+aseH3bu2DByn1vlKgQdf8+022dLhaLML/gj5X20imLS0853WAqnBRQEuPN
         oRhuHgEPeX9fToa36TD2q6Lwek+r9mDH2dyy4Q+TLgU4q76T3tWGh3XcWZEhMnnkc1wH
         ddSy/2gbKY7sRZ9qjBalUPJojdUVT+sBaO3cEzdxQkXwfEEXey+cAh+TBGML+i/5+uUI
         5Gg3gpr28i7c7SD5akBDjuRpeepZcUUHFZiUEwjVjpOzcR2okVOefuQPm3KMKvYvm1Wm
         iHyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=XrTloM92XU/HtnjCpNsqZDaC4JrbYBVnT4BhPUEwCSo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=fgq1XMx4rZ2NodoJeoYC/3oQYFqk+yMOT9eOtGPP6y7aMw0ajfDcgcqQ6gXsKM/Z5o
         1s6HsDpOo81v8tkszGSH6EzNn5L7KwrlL/ONNdYbhx4u3rWH8oF/FgahPEp1OxlgQIi5
         HampUPkSycgB3EFyxDYenVTe2Ox3CgZu3WLxOLrwIwFZRC/vMB4hWPBRPyaejd6lZO1b
         vkKPTr3DqandbO54xsD4LbfjG6CKgGuTsfWLxyeqXD+5bsT6bexdLB31QxxRvAKxGRK5
         oyGYDg2rQw4t2jutzWxnLxjR6lXziv3hxXV7cgVK+LKAziAsFeRJzCKuAislKLjSrIHt
         sSeA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id y12-20020a05622a164c00b00434e7ea0f96si13533988qtj.224.2024.04.16.18.36.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 18:36:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-622-eERncQIQNIueqKJKOpjlTw-1; Tue, 16 Apr 2024 21:36:35 -0400
X-MC-Unique: eERncQIQNIueqKJKOpjlTw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id DDA9A800935
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 01:36:34 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id DA43623D71; Wed, 17 Apr 2024 01:36:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A213A51EF
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 01:36:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5191C803513
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 01:36:34 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-584-D0BLee4hPfCjxoquUcDmBQ-1; Tue,
 16 Apr 2024 21:36:32 -0400
X-MC-Unique: D0BLee4hPfCjxoquUcDmBQ-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx104
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MfHEJ-1sOqAk07pb-00gqCA for
 <blinux-list@redhat.com>; Wed, 17 Apr 2024 03:31:29 +0200
Message-ID: <20240417.013213.361.11@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: changing time zone
Date: Tue, 16 Apr 2024 20:32:13 -0500
MIME-Version: 1.0
In-Reply-To: <0b16705d-4153-46ed-992b-047867ad29c7@gmail.com>
References: <B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com>
	<32bce24a-c40c-491d-8932-4993cd818a19@jasonjgw.net>
	<0b16705d-4153-46ed-992b-047867ad29c7@gmail.com>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:8LrXBTX4PkdGlv7uOdSS7Sm70OlFqE63dM4PVEHN5MnAV2/pua+
 EsIDg3EwpRMQcicYecELJIMSAkqKg6KIhiCuX5LMi7CV28dbXD1YcEAIOYPFZPSqJ1hG+PT
 yK+LmVaCdzWEO5/YORrmtsQw1hoWTf3c7xomjTuSzAQLL3P/JPgHBO+Ecdqh02Xjuj8iDqT
 g1xbSj+rvrW1PFc7vmqmQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:g19kN/mwYc0=;k1r4btH18wqLe4dGFP1hhJ4xWG+
 YzgFXbWhYYGnZbi3DLyy3jY9C5oifwlLubIiyjx5zX1dbo4b4xPMtLI0w4zgID79xNbw1Zhct
 k+P03+LhlrUR447tPTJk4pAVYS8gO1ASzFCVh+/8wf7kEmSCj9YKktqB5BnHaWw13e3Imits1
 PqvLoL2Mn0q5d8mo7TX+LlHd2ZPqjMHghE5KjbOsFl2kDQ5ImYxit/mBhNMe2qCYUCzoZIz6x
 tzpY6A1H9jpdmK92oHtJiyEPB9TXgHE/OaG8K909m2Uw7ZLeYtenj/uXhFZdM6AYIG81QKqff
 tyD2zRNuN0x58Z0h3kFTlrkZORE9SM+fn6BdTUFmfU8mB0uQRK9E5n0g/R9H79olapMgO8615
 PJ7pSxWEvDZBVa8hu2zO2R79I3pXf/QzPwBbVjTPsPenFt2ARM2GqoO3R9e2zKf9wPjZG++2u
 xt8GT1aDPS7tfXzT2xl924rGa5zhqIykoy8Cpx8bc6GWlwT/RZ1ElhohcIBGZOQNGAA9WT6Af
 MhaSBCOwSenqqsXthopNVkdiVKMWvu9N9gxQseEeK3cA/V0BkwQsbGiwkdUHxvEqSSz24TbpG
 6JLEbYNIUfHkC6yHEJ1HYhAq7WvXMmlShclebMxiMC183asNHBpHmtFOJDBtP18VBkXVjLcdL
 9eICKKCzfFj0qrmlPz4DXWqQAamvE1x43Y4x3q9u84es7gTXtfqupMm4nXdpYV1tI4Na+JluH
 0YtaxslNeR79RTm6OPjTm8GBmJyF/Zh9LjEAKKSeWCtvWrWw1DsCiVMcw4/JiKrCuWLW+SkM0
 H9iQ71IJe2gdiZJeNF+u4H29SsKcuCDyOZoKpvEmh++O8=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.17.20 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

Try searching for chicago.

----- Original Message -----
From: rodney jackson <jackson.rodney.1970@gmail.com>
To: blinux-list@redhat.com
Date: Tue, 16 Apr 2024 20:16:45 -0500
Subject: changing time zone

> I am using Fedora-MATE_Compiz39
>
> and i am having an issue changing the time zone from eastern to
> central.=C2=A0 It seems to be stuck on new york.
>
> i go to date and time under system then preferences then hardware and
> then date time.
>
> when i go in i have to type in my password to make any changes
>
> when i go to the box to do a search i type in missouri but nothing happen=
s
>
> i tab around and all i see is confirm or close no list to choose from.
>
> so what am i doing wrong and=C2=A0=C2=A0 how=C2=A0 can i change the time =
zone
>
> rodney
>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

