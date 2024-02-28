Return-Path: <blinux-list+bncBCVPTHE7K4IL7CH5VYDBUBADNYBOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CE086B1DC
	for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 15:33:37 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6904160e997sf785606d6.2
        for <lists+blinux-list@lfdr.de>; Wed, 28 Feb 2024 06:33:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709130816; cv=pass;
        d=google.com; s=arc-20160816;
        b=DNp6i6hq83bOTBqmi2nXO3gT696o+ZucCG6O9iT2mY2S6/LAektv2JBrtwsAMZxf2v
         7YYrLyKDcVsm+PNEkOLRcinkx5x+90Z/GwymLcEjxSwpt1x2FqEjusrs3O/QuIA5p8A0
         DlIbd9B25xw3xSBysiOyL32Tbi6qsuM9iylg2tAhhNIBs2y+7+cpX4/NdwEpinB8TxkI
         3VE3D384SFSs3kUIiHFDKPkhJzjgpqWwn3lxsz/tgYtAeDQHMzMyXvNKF66WoIAea1J+
         HTBI0cpbjop2M6fKAWfQ0Xjv1LFKU7Dp8D1XenZRxi8/+UgTkxZiWBa3cdU5sbIRmOg3
         hAYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:delivered-to;
        bh=siAVrfDLkWp/4BguNUysZnk1dlzrhC0MJk6klW9Ez3Y=;
        fh=I8lmLsDFiI30APPMnvxlKbVsj9rfwLZj056lpKEY7ew=;
        b=blfFnW8cNN1B4vlJB8JzxtVf4Xt1sYP1IQvMIxBvh0RWUPG2XzZga9fJznokj1Eezk
         UDulItaK7hPhwpPw7eTaPCFQdAiGuAgtnPNssxQizUa5mwyIDE7IcKAvN5/uDxVN38NY
         hU8dItLL2yFVolkJrlWVhL+XrDRMgVNf5yOFihM1Nj6vozC5Du8USVD7osYdepw2idRX
         Cn+tCAQ0AYiGw09R27GM6i+p9D4r9DJOK7i50ayZZ8xmAx9diZhgusOuOZqroEYJxKRG
         kdD1q7lsEg90BoACugGRjtWE/hDOll12EbCJDOwhWa04RpaM5b73yM4JnRO/96rILuR3
         pyUA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709130816; x=1709735616;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=siAVrfDLkWp/4BguNUysZnk1dlzrhC0MJk6klW9Ez3Y=;
        b=V8acM5iEYsMGckJ/BUcsQuAJgoWdMZaXHhhyE7DKTre2KnB1CdPQ7YLwaVN2o4ehe8
         7iHkQNkravHgTWnKGz31d4NGjiqHddlZpSYG2QleW98zxoDuXBvbNiG7fmYPKp+EBusi
         VOHE3kxOGDcWN8ZlIAG53DhPXDdLIdjHT/I79hFZJwoD90KJklt+guWnIB1aNJTOwk3S
         opfUm+nXyBCRJg1Zpbt6QNAqcao4yWIvyBcY63fFosmWQxD0HuWC3RVZdgUlr6y+iDXo
         8ytOCllsBbmKcCG9610td7/HWPye2htv+RY0qZN6oFQHRCTL/JnMyVEBhwnb7PendbqL
         zFeQ==
X-Forwarded-Encrypted: i=2; AJvYcCUjErPdlvFxehfl3G7iiiXP6DqLBFuaLrJ3F/aSlzHr35HWAtfXrGbK94RtO/gNioy30MJEZkLFoLzQvJ4mqa7O7Hi6m2A/yOMx
X-Gm-Message-State: AOJu0Yzw2KbP9XU7Ut4hiaCm69OHuh5r40xOJzhsmhRXlDfA6y2FieD1
	p9kEenW1km/r3P+tKR3bBKzPdOezyIcR0M1D31vxESQFj8lsus45Gaildi71NwA=
X-Google-Smtp-Source: AGHT+IGHI015Yde700t0riCR9WyAHLNHUUYJU2SPABjvWRLpu4eVIn7M8qg4BK7ydRVBghIX/tyhBg==
X-Received: by 2002:ac8:5cd0:0:b0:42e:6da7:8c3c with SMTP id s16-20020ac85cd0000000b0042e6da78c3cmr15168804qta.59.1709130815991;
        Wed, 28 Feb 2024 06:33:35 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1996:b0:42e:7e94:eceb with SMTP id
 u22-20020a05622a199600b0042e7e94ecebls3863306qtc.0.-pod-prod-03-us; Wed, 28
 Feb 2024 06:33:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW26+dcFB12OIjf3E2u2GbMNwCCiJnC4/pRsEbLChsw9Bg/A02fJoFkBna8XPivaDc4EOX94iY5/HasWMt7bFmMowtt8P1yQGKokYRi
X-Received: by 2002:ac8:7f54:0:b0:42e:81ad:bf24 with SMTP id g20-20020ac87f54000000b0042e81adbf24mr11411639qtk.44.1709130815133;
        Wed, 28 Feb 2024 06:33:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709130815; cv=none;
        d=google.com; s=arc-20160816;
        b=GMBKeMdhWwPzjN1clv/QFFX8/THbri1rawsdYE0ILJ+7d9aBhvBsRdohXp4LdHiL6H
         6ZmigarWcJW0LkW2KglRhpnNglzV4ZV4wjSIm67laiksBkGFWmCGY2EeBWRcYlbSNfBg
         K3HCod1eMZhQ1kg09VBtMW84DWq88QY3nSjpciQvcUUoa2r6TdAAorQBXPS9dRsldMaf
         9XE8NzMEbHMu8Ma2kdMvOPOKjWR6YQhgNmsQBfMkIm0xv/vlfMQgbqbtK+LsjoStHGVI
         d7l0pc2TVZu2ndENSuG2VCvC3+z8GDXtZyo1HMMIjaa7lSMSwUjbNv/uKXHf5GqwfJXB
         wnSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=siAVrfDLkWp/4BguNUysZnk1dlzrhC0MJk6klW9Ez3Y=;
        fh=zDMQH/MiTWddxzGyScm9OtYvjWRWlca8nHg2qv3FsqM=;
        b=E2siLqMl/CluoFM681TiJvdK4600SIoYky9pu/kHFTZM/FX0k+dNhzOQvQCAg6sMU2
         4mrPb/0BK+Qu2muQS24l2sOnVh15XBxH6klAcLcldqeM9O1PMNT/5gZuNe714vnGB4GA
         z3xmbZiWx5TF8YR2+9jZoOP1k1K4hSHE37jyOLQc3jxLtBYQyv1oqwjIljzYYdekxayt
         1Gc+IW7kr7X1oMAd+KsS1fbuHQHP1iQWYJe7cY7xO0e3MVWzkYXgDapUNkedzSrFsb3/
         PcrdWtscxMKWNWznwVvMUXzt3kTaZ3vssdG19S+deXklzAKC5OMEHa4O9/09v5FD2q19
         xFLQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id q16-20020ac84510000000b0042e5c1b4f78si9671110qtn.762.2024.02.28.06.33.34
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Feb 2024 06:33:34 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-649-adTpWUXVO8GsDQT6zpyqrQ-1; Wed, 28 Feb 2024 09:33:33 -0500
X-MC-Unique: adTpWUXVO8GsDQT6zpyqrQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 53BA182DFE6
	for <blinux-list@gapps.redhat.com>; Wed, 28 Feb 2024 14:33:30 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 506FB200A382; Wed, 28 Feb 2024 14:33:30 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 171F820155E6
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:33:29 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AC05D1C16E4B
	for <blinux-list@redhat.com>; Wed, 28 Feb 2024 14:33:29 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-284-PsxfZHWWMqekLW4jxgmoZQ-1; Wed,
 28 Feb 2024 09:33:22 -0500
X-MC-Unique: PsxfZHWWMqekLW4jxgmoZQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 34DD344FC6;
	Wed, 28 Feb 2024 09:33:09 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id E1D591000BA; Wed, 28 Feb 2024 09:33:08 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id E185D1000B6;
	Wed, 28 Feb 2024 09:33:08 -0500 (EST)
Date: Wed, 28 Feb 2024 09:33:08 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Janina Sajka <janina@rednote.net>
cc: blinux-list@redhat.com
Subject: Re: pandoc and the docs format?
In-Reply-To: <Zd9C9HGn7q6cVhwp@rednote.net>
Message-ID: <Pine.LNX.4.64.2402280932210.943044@users.shellworld.net>
References: <Pine.LNX.4.64.2402251934330.897574@users.shellworld.net>
 <ZdvfpQXrW8k516Tq@panix.com> <Pine.LNX.4.64.2402251957470.897936@users.shellworld.net>
 <Zd9C9HGn7q6cVhwp@rednote.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
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

That is terrific, thanks.
Will keep it on hand to try next time I need it.
Kare



On Wed, 28 Feb 2024, 'Janina Sajka' via blinux-list@redhat.com wrote:

> OK, for text as output simply change the filename extension in the
> command I provided as follows:
>
> pandoc -i file.docx -o file.txt
>
> Works like a charm, imo.
>
>
> Karen Lewellen writes:
>> Hi Rudy,
>> My end goal is text, not html, sorry if my post was confusing.
>> Will check for docx2html though...appreciated to learn of the program.
>> Can anyone answer my pandoc question though, since I already know that
>> program is here?
>> Thanks,
>> Karen
>>
>>
>>
>> On Sun, 25 Feb 2024, Rudy Vener wrote:
>>
>>> Check if you have docx2txt installed, and if not, ask shellworld to install it.
>>> Once you have a document in text, you can convert it to html easily.
>>>
>>> Rudy
>>>
>>> On Sun, Feb 25, 2024 at 07:38:51PM -0500, Karen Lewellen wrote:
>>>> Hi All,
>>>> We have pandoc installed here at shellworld, with my using it most often to
>>>> convert epub files into html..then using lynx to make those  text files.
>>>> I have a d. o. c. x. file however.
>>>> previously I would use basic gmail to convert these, but that door is closed
>>>> now.
>>>> Will pandoc change  these into html?
>>>> Because the format if not actually a word . doc file, antiword will not
>>>> convert them.
>>>> Ideas?
>>>> Thanks,
>>>> Kare
>>>>
>>>
>>> --
>>> Rudy Vener
>>> Website: http://www.rudyvener.com
>>> Check out my latest story: Downgrade, at https://www.scifishorts.co/authors/rudy-vener
>>> Need a Limerick Fix? Visit https://limerickdude.substack.com
>>>
>
> -- 
>
> Janina Sajka (she/her/hers)
> Accessibility Consultant https://linkedin.com/in/jsajka
>
> The World Wide Web Consortium (W3C), Web Accessibility Initiative (WAI)
> Co-Chair, Accessible Platform Architectures	http://www.w3.org/wai/apa
>
> Linux Foundation Fellow
> https://www.linuxfoundation.org/board-of-directors-2/
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

