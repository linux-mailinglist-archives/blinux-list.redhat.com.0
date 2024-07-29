Return-Path: <blinux-list+bncBDYPVTOXSQEBB25PT62QMGQEQJUVSQA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E76893FCED
	for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 19:57:02 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4500d2fe009sf43025161cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 29 Jul 2024 10:57:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722275821; cv=pass;
        d=google.com; s=arc-20160816;
        b=aKUsihasr3ftLn8M7FnF+/0XCY9qn98QS2JJnCWdeYvF/Hj8CEfB3+n2TfqsFSyk0R
         +ZYYrI+o3v1F2TKkw8NTiCiQSKOxBJgWJnd0a6BbhMAdrDt101TBNccxzRUWulorLMTI
         bOwZq29+pnuGS2PopfX0srvx++zzElRq0tkO1G+B+Tq1b3ct1mAl7T1rZox73ShX7qYY
         O6oHPfvRbrObA+abPzkB97gZmQRq15GuZN4CwqvPO9DD79bDyZKiW0qltP/fGOsiVE52
         ChdtHIT5i7AFM9iaAyUSRN60wUajmosqgJ0XrBAZ47j0hQzagAAMMKW9gmsM5dEjlnY9
         kHgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to;
        bh=qD+nJb5fkoh8IcSXxjKzOHR0oQo04gCt++M5yJLjlRo=;
        fh=41F+NwTYLPwfwewN91qf0NeEB0YTeoCYfxnbEeqGXv0=;
        b=cIxSCCkLIizzBzLnaI/YqXBfFvaKtJ0JUqsx7e2ynkQNgVc0Jj13eonrvKSbfilEf9
         i9uuJnoQiLF5gIneXkWL/QzOF4n7MqiuLD1+06x7R7ejVxk6DVfvz/3EmcgK0p0aJjQp
         /uWLUPSSbNM8naML0enDqGWPIRWPv0s39FJHAYpLGPW6zhbRUhriYiJYOHemduXfK5gz
         mDAZ/+gAn4BMXax1qHuRK8eqIi5FLcJDrt8r0T+5rKJYO1oHg433B5dNX9h0tsaVYVcD
         xbIvy0IRITRvBNPX6TZKWi29aZPcs91UIT71JcJiOIuxApTYOzqFm7lxvlBYT6XEh8yQ
         lgcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722275821; x=1722880621;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qD+nJb5fkoh8IcSXxjKzOHR0oQo04gCt++M5yJLjlRo=;
        b=gDI3NHSYD0B8lw5g62XQHyZBaFoVzoDNWP0SW82Rms9nDhwhMPCsKPkXUDRm4Zp9OV
         S95audUKIBH+Gd/ATVClN7kIRkmto85rjXJTA0E4pumZoV8y86c9OZIBlhaZhPVh22iO
         t4Gh4IHlnVdqxcjP5clv20nsN7MYqZxh9/0wvqKQsKP8oFmKo3cZhYJzvsIU4adWxx/Z
         y86n56tpgrZ0oG/iJglbOUzN9jEIm1UjTr23/+tqKABv05NNsHzZKNodZ4dZWPyLmvqc
         Tj/ekoaWCKF/Y8Xut8tTrtZhi0Au5GRvBfMkXDWmxJWS/xYmM1RZ+mtHoqHh1rXS0ove
         uKMw==
X-Forwarded-Encrypted: i=2; AJvYcCWL0cj+qTnB/q5j8c+L6avalkdWnJrr9FrzHlf0wDf8ZcWpkJja0hNCp9AlZx59NCquuNloxAIK+unw3oFtWDQwD5kTDB09jO70
X-Gm-Message-State: AOJu0YwVK/qAv3vevn6IJoxcdV67rP8iV31ex7Qr/rTByOgC0BaTgXMb
	eBCIF9FbLkr1zgsXVBWJPwht43UzhTgmB4LdHm98GFN/h5OjcPXsICn6QTQc1I8=
X-Google-Smtp-Source: AGHT+IH2uaeVXc6Ns2/94x60VY5mCplkXbeRrUpDuvau5Mfz8DnqHO0Op9nvBsZ48iLin3tKTwOz5Q==
X-Received: by 2002:ac8:7dcb:0:b0:446:63a6:5e22 with SMTP id d75a77b69052e-45005b05235mr118981221cf.2.1722275820212;
        Mon, 29 Jul 2024 10:57:00 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d09:0:b0:44c:2c6b:b01e with SMTP id d75a77b69052e-44fe319a2c8ls10791891cf.1.-pod-prod-00-us;
 Mon, 29 Jul 2024 10:56:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVaIWJoGmUYlpelWyOWD28l5/R4OiKiD6ueOSvVqTNQ6gQT2AwGxklOvP7Jk1YSTSEzKWB3gEBlVNei3J8q/Yv3/eMTXBp3VfvAPobf
X-Received: by 2002:a05:622a:30c:b0:44f:e893:4567 with SMTP id d75a77b69052e-45005abe093mr135435971cf.2.1722275819160;
        Mon, 29 Jul 2024 10:56:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722275819; cv=none;
        d=google.com; s=arc-20160816;
        b=xLqVj4kFanDn6QEcpbBUDld/VFMAk1/1UU547WWVvq9eipcN629q3n439e2aNeDH9A
         9Ll3p1TSdjeQvTgj7ulaObr3a6nl/L9TdlQHAuW21Zdka+f4TD6LVTzqcvp0xifODF96
         WGKQYTg6/NV6qCYwrGmu45ZrKO9rGkJffGvDse2tagzqz8x0xWDb77sxvdR0vTEd81h7
         2Mh4LayZ166Er+zLUVx9NGVn2alnF6x71a9jO2XKDabyBslzA/eWVXZLy7Gr6CEuhYIJ
         J4tc5k86DTkH3jVSPsiU7n+GbI1K3bJNxAUt0hdC0GuNj95mj1QqsDlnPBh4T55I6hUq
         S9JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=esbvrHWaIJ7NHF5CQD+hxaUdeJaXpBHMV0ZdEw3qCGE=;
        fh=h+avxhsP12CKrdN8dnqqKmbrfLptYfKr1D2HayTsjac=;
        b=LTb7NR1UhhwqUDnDYKcDAJLTY1QahUtTXrkwAdXMDrq5C8boikZWRap+I1ia5crUII
         Gr4M67uuUlhOEADvdX7eEwJCJiNGif+xv36t5fJbJiqEGbTSVCSGoWzbGHxWKGaQm4dC
         V7O+Z7DCiuiGrEX1MqHGl5siYHgi5vK9wC0UxXonxlcE2NYyc7QAyvVXP5Z0Al2mUhSX
         b9meOnW+7Ei3OAbR3Ydd0kqYYpyXgRU13MGZp4cOEOYVtYvpvejRghKG8Tzizpo/qZhf
         Gle8daWSVxGfCD/mJGPnrQVe3NXsa6PnFxeroZykrNPEmtabHFVrp5DK6nmh1mvXMFle
         1+FQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-44fe853e13esi109112481cf.804.2024.07.29.10.56.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 10:56:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-257-tYq_JJIgPT-qlLtUlvH79Q-1; Mon,
 29 Jul 2024 13:56:57 -0400
X-MC-Unique: tYq_JJIgPT-qlLtUlvH79Q-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1140019560A1
	for <blinux-list@gapps.redhat.com>; Mon, 29 Jul 2024 17:56:57 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 0295B19560B2; Mon, 29 Jul 2024 17:56:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0046A19560AE
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 17:56:56 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (unknown [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 94E3A1955D50
	for <blinux-list@redhat.com>; Mon, 29 Jul 2024 17:56:56 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-619-iWOk99JbP1Oa-1Ljhx27sg-1; Mon,
 29 Jul 2024 13:56:53 -0400
X-MC-Unique: iWOk99JbP1Oa-1Ljhx27sg-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4WXmJj51b9zlJR;
	Mon, 29 Jul 2024 13:56:53 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4WXmJj4fBSzcbc; Mon, 29 Jul 2024 13:56:53 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4WXmJj4XwBzcbV;
	Mon, 29 Jul 2024 13:56:53 -0400 (EDT)
Date: Mon, 29 Jul 2024 13:56:53 -0400
From: Jude DaShiell <jdashiel@panix.com>
To: rodney jackson <jackson.rodney.1970@gmail.com>, blinux-list@redhat.com
Subject: Re: WiFi on trisquel 11
In-Reply-To: <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
Message-ID: <c20c8201-159a-6ca5-61e6-b2c349b18a66@panix.com>
References: <302d6c88-edc0-f33e-bb93-311e82098da4@panix.com> <7efeda7f-aad6-46fe-b848-9bc1be473feb@gmail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

You may need to install the driver for that wi-fi card if it's available
on trisquel11.  To research this, lshw or hwdata packages may tell you
which driver is needed.
The driver that is needed may not be available on trisquel11.


--
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Mon, 29 Jul 2024, rodney jackson wrote:

> i have installed Trisquel 11 on a laptop and it works pretty well, my pro=
blem
> is it is not finding the built in wifi card. when i have windows 10 on th=
is
> machine the wifi card was working great. how do i get trisquel to find th=
is
> wifi card. This is a Dell laptop. here is the info on this system: model
> number: PP28L
> reference number: 07147
> dell LBL P/N: NM508 A01 APCC
> service tag: GYWXLJ1
>
> XPS M1530
>
> i know i can use a USB adapter but was hoping to=C2=A0 get the internal w=
ifi to
> work.
>
> if this is not an option what brand is the best for Linux?
>
> The ethernet works but i do not want to keep it plugged in all the time.
>
> any info would be appreciated
>
> Rodney
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

