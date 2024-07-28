Return-Path: <blinux-list+bncBCV3N6GOXMCRBS7ZS22QMGQEB6PWHTI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id E136F93E384
	for <lists+blinux-list@lfdr.de>; Sun, 28 Jul 2024 05:36:44 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-44f4e1569fcsf26702241cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 27 Jul 2024 20:36:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1722137804; cv=pass;
        d=google.com; s=arc-20160816;
        b=uiX/eXJl3uitaKEn13m5nFzfZ2rji5QFF9TbvyNtNEclfOZwTDeNcX4+MT2R6UGG/M
         Jku3DRAHHaKerFhyq2hFGPwq5SgZHPFjbGYmwmby+rrNJnQ5NebW5LHv4tnzZG10ZFAd
         uNQDkenh0NVB0CnPYuBN3xS7jEu3iIeohN31yajw2ambpSBkeRa3nUNU2cLAzAI5xANW
         s7vCsicPIEVZu+Kx3tOHyMwZJPyrjmaq7FbZvYkDN6lo0m8gMFwioKaoo1xL59FUTYii
         ZJnZ+aTvUjkBFz9HB2jsz2o1RbYeP0PWdeXjCN5M2dDqHO3gk3cLlTqOrEQ4ylQDQ2ii
         GO1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=/CY52FqhQdgzCqChOO5JhcvU8qi0vAUes8wg1yZUUO0=;
        fh=UgQezueStk0W0/3K30azChy0aA2mZGzQ6YecxmmSgSo=;
        b=MbKMdUhBRv+ekZwtI4yLC10OSpGU582Qz8UBDMp/QrT6NifObOcm3ZPsmkNQ5lN4sH
         66bgHK0KzDpIoxjX1Szghjy6xcsPF/leVED77w3upYxHGTSgV1LqSV0CTV9NwNhZsJCP
         /dINj6JqZiGtxGvLxiOo9hO+5z+WLCtssmLuid8dAZ7OplqXYRh0MzfeOWq1+4MugwyR
         VVT344Y2bMCzIQs3j6KTVgOG1yT+wigWV6KSzAQyFu2GQ9dpCN3gIDcdsdvpzJVvllRV
         77AnmfK0CLLa5hLnbJO096IGL/SGxERc/Ulwr82G4cze9/1PhcQ/wh2FUJT0j8dJP91I
         9WYA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722137804; x=1722742604;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CY52FqhQdgzCqChOO5JhcvU8qi0vAUes8wg1yZUUO0=;
        b=p4lG7SvTVgnGwB0wTVUvlYn54J1oydP6Z4VH2MpJGIwA/w1QHchOD6EV9qSyBOZJFc
         vgljkTZrEKRfs9MdZMyt/oFv4u2s81l9eId5U7hIYBFnKOfRInbsUrPfvDTTvAzxYTjX
         QVf82zP5eR32D97Ag8lYs9tFxCM/y9/bk7StPj800wl9PuEYLn3AGoNGgH6+wY8BowF8
         0dExOqXNpgufD4Mi7dO5KbxMJct9KNCUFJJfVVOn3kIl40j+bETk5DRS29agfpdQMQ7d
         5FeLTE2fyXdBIrS/IJ+j0M+o4k/mLneTkCLFjQYGGnSBgEkb3qyeAsk83y0klb2moTFL
         UMBQ==
X-Forwarded-Encrypted: i=2; AJvYcCWyM2LRLEjDEng2QoIT8h1+HoA9kFnwy+6LiVm8FnMJ2S7jcrzrdTLmLzjD9SGrajQVYGtMh+D0KXzlzPjTFUYPjC5t4MCxUnto
X-Gm-Message-State: AOJu0YxmXyTwa6DKIY5/ydYph4TmyEy6GanSrKl5DC6cDzeCmylmptNm
	LOB4H3v6gBcFAs+lOyu1wrSCqfPPHPN+iBxlx1cg56r27+Be7Y550mUi1uYIUe8=
X-Google-Smtp-Source: AGHT+IHd5q0GjHgyHHDqDhCLD0pGNMvDO3jZ1F6qvhQVxT6pfJuoP5EK1llKkrjLjLZdC3mSS24vtA==
X-Received: by 2002:a05:622a:1b22:b0:446:5c31:f268 with SMTP id d75a77b69052e-45004dc7225mr52853411cf.30.1722137803727;
        Sat, 27 Jul 2024 20:36:43 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:5d4a:0:b0:447:f242:15e1 with SMTP id d75a77b69052e-44fe31839c4ls63333631cf.1.-pod-prod-02-us;
 Sat, 27 Jul 2024 20:36:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWSpb8PR8/FnHEbuii59VyJBGwrsQ1MJCC0W2RHDKAgqzQJdQTVdNMMNWAfkf9yFK8WBjrU3frBOW0xAuousMUWmY485SCmJhoVKqHz
X-Received: by 2002:a05:620a:1922:b0:79f:1915:5b3d with SMTP id af79cd13be357-7a1e523e557mr538694985a.18.1722137802919;
        Sat, 27 Jul 2024 20:36:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1722137802; cv=none;
        d=google.com; s=arc-20160816;
        b=Ia6EIaEchgBTT23Y96jk+o34bkohZL5YbPSuFtumKtmwP1/gD9UT1IaLrCURdr38H/
         JJcTRtwDUg5osZNWI28TWu8gGu2ixXlJRLXNHsbpk/cymcH7kIRlBC0y2roRmSOpVsnR
         +0mKb7XhJ0QIed/6ocb92x0wCEMHyEB4ya2lW5Hb47ZRvnLRp04dKs+KZxgzk9ICY3Yv
         iTDIDUAgaGLHAnXYToLnzcy07/XZngeBNqg8Lpww+Mn9yviNh5uvipeKMxOHJz5Cflnd
         XQkhZqm8QYJ9kdftj4cHSOi9HHEOKiP3B4bPcnh5biKNV2+pZ8ggsgkb9WW9aQ8hKAHK
         QbmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=iP4cBoUOgEBW//xhhVeyQMeN3HvsMckmqz+i/HtTxqM=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=mD5IjiWOZ46xA2yA23uVme4aFXbyUavQwWyhEwl8mQEnH8Y7avqv7NrvMAuqKeL5/C
         3vihjAFWJ9ywMGmtApvufHYU9UpqAheiU6uhuY01aXpaxT/9N+a0bNzTvVVzGwprHyBg
         24j7zttv+BhSMhhUDuPtVx6rO7E7QFaHMweu1kClj/tMZKnw7K5Q3i6tWK92jzaoWNa8
         YBONFxtGiYlKZCOqHvroQ4IjF/U/s+NLUvxHRCsiWdHE7KFU8nYMMrsd6PfiLyl4i9EH
         oUt31xZw7fDQLUp8f3vCtV2n2gyiYwvCcQWR0HdadVvDdtCnALp4d27MfEcFbzUvuEcv
         IRXw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id af79cd13be357-7a1d74600f1si772562685a.388.2024.07.27.20.36.42
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 20:36:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-414-e6ebQzYzOgC7r82ZDEU4oA-1; Sat,
 27 Jul 2024 23:36:41 -0400
X-MC-Unique: e6ebQzYzOgC7r82ZDEU4oA-1
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 615A21955D42
	for <blinux-list@gapps.redhat.com>; Sun, 28 Jul 2024 03:36:40 +0000 (UTC)
Received: by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 511F01955F6E; Sun, 28 Jul 2024 03:36:40 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4E8CA1956046
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:36:40 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C0DFF19560AB
	for <blinux-list@redhat.com>; Sun, 28 Jul 2024 03:36:39 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-563-DsPSA4z4P8Cp4-7WNouJpA-1; Sat,
 27 Jul 2024 23:36:35 -0400
X-MC-Unique: DsPSA4z4P8Cp4-7WNouJpA-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.160] ([136.54.145.217]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MVvL5-1sfMxA2Tvp-00Xc5C for
 <blinux-list@redhat.com>; Sun, 28 Jul 2024 05:36:33 +0200
Message-ID: <df0b249d-fe4f-458a-908b-38025aae8f60@gmx.it>
Date: Sat, 27 Jul 2024 23:36:31 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: scan and read under Linux
To: blinux-list@redhat.com
References: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <e012aaa6-68ac-4e33-8126-3f0bdb9ad7fe@gmail.com>
X-Provags-ID: V03:K1:ackqBXXfHMz7hEKR3Q/IjplkD8NyhinTJ7UGK1IlWrGRCIZoMqG
 ucm9XrFlv/FeUzaMF8HiS9s+KbxSazTy5sIi79RK99Aj1E70q7UxpX8xSmsvM5voqyWFpNd
 pn36o1m8x/R1tgEz4aa4g2JjUdaOp1JXzmsqefySmjXgtSJid86byqFXX8fXlKJIeINk5P4
 KE6qd56ocKC++IiL5drAA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:zD2Z9oCT30Q=;vKrr1Wcc1slKTxWjeqUw9eLUwuw
 o9ECmMFpN3nGFM4JXAwM0Gsa194wHp3+vidUPjhZD7lURFEA6WXNCkEePVaIQc5NP+ZcjH+vw
 cvAuDonHFm4mLe8uD0vyIkQe/ZyrFERew9fe3J5gtfnskkFjXgGQJbvxNwM4JLH+xhHlqQ6Mw
 pnuaZ3LBFJsm9iuzCWnxCfzNWuZjIQ2MP35V8/4JxuCrXuOs7a2AfEuTqFieOQhleMVZfy8TF
 Zuc/fWyQ67kxRuQk2skymc6zyYpRD76EeT71HJ8Ej14O6HVj3qpMCdC2P2znrvRKAAuaPVp3o
 6FyIw8ssK8KzutR8sTFJUtdw6z1mzj/zvwqWO7Hy7qhkH0AlkRsrAk6fftCkcXcQXLvhGmMk3
 o5SaKM/whb4BeCaEFc+/rh41RFdVUzQssFnlAQH5ckh29aQ2cy3vvCXSkg5NA58uSqKHewHLi
 VeZVEBIIU+O4i0IaFB1yVwOrjLfMSmxcPS3GuhKeK5ybIHivxzpR2vCDAu1iMi/0ZGRUwqinA
 DsZcupL+okuuVSxL3KNfihCZuYgZ7D3Lhf0dQFReVo0nX5tg4fNQAqbwXtRxQoDP3KGWBycMN
 D0NBuWNDCZA/qglqFK7Azvwb6Wo2r3DDQ1eK+D8NFZ0tj2VhbI234GPd6i8YFHo4tMXu8shzR
 0YEF2CJXxMVljKs1BsDY9qSJcBGVWr+E0EVeOvTsMlve7mX8vjwAIajaljEu2knNsqp8y1hOF
 FZejU3oGKLeJprqTNKho8Vqjgf3twZe41pnmlrYxiL9Nr+z0qCl609rfUx2JauqmCcM4yRjwr
 4O4fzMJXKCeOQ4b2rK5Y8vKA==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

Press F7 in the document viewer, then click "Enable." This should allow
you to read the document. If not, you should be able to open the file in
either Firefox or Brave, possibly Chromium as well. If nothing else
works, as soon as the document is open, press control+a to select the
entire document, then press control+c to copy it to the clipboard, then
open pluma and press control+v to paste the text into the editor. One of
these methods always works for me to read a pdf file using Orca. Hope it
helps.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

