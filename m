Return-Path: <blinux-list+bncBCCIDSOV5UGBBEXZSSYQMGQEQWB4HJY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f71.google.com (mail-ot1-f71.google.com [209.85.210.71])
	by mail.lfdr.de (Postfix) with ESMTPS id D783E8AC018
	for <lists+blinux-list@lfdr.de>; Sun, 21 Apr 2024 18:19:32 +0200 (CEST)
Received: by mail-ot1-f71.google.com with SMTP id 46e09a7af769-6ea1e0708ffsf5516183a34.2
        for <lists+blinux-list@lfdr.de>; Sun, 21 Apr 2024 09:19:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713716371; cv=pass;
        d=google.com; s=arc-20160816;
        b=N2YXynXUkRa7pVlc05RuPBoh2TZvqBG/aXvPA3u+Sv7jN4/K/543CGdE3rEIGnujZ7
         l5ryc/0Z1M8l9+rRJdlXmJEtgIXAbQm87foX279LPpT1ogAYB8s8IXYoW1+QUI9BM/So
         N9f/5gUo/XL/ZhGYifDKbqk9apsvPfhf3/qmjyMfJI6qcP6sIkaBc3q6OoE3kqLuvaoa
         2kyq049hw7dqT7aJdRR1t38pqsclfZRUPvVqDe2gVuuaOxspsyaNh+UmMZ8sw8e4OfS4
         jvAG0/kBuKBAEIPo3yvtQkQkiU/KVgOL+wfN+9+i4zv9zLEet2ozCyr+zSAKAhITeEKu
         dKlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=r+JKXmunMMcM1F5PofvTI3mGTBymotx6KYlnv7bZOWA=;
        fh=yF8c12sIT+P9wZQCY5VuQGGDCyxl4g4fuu8cyofoHOM=;
        b=fY0FJ8WIx+HtUZMbRti7Rlnlyn1sGFwFqK+oqGLgHOKvT6k9bXdi67a7U/Z//psL8+
         UYcSqVRfg25GWM0f8bdakXK4668xhGzR9ZVbqEKMi3HNA+lw1tHbRA3DAVXP8PazJhym
         bYWQktmU4ipCWxj3Lz2uqQ94WZ5b/jewb4aBO7y38y9fZO7emHyVnB2gODmTxRIZO/Sv
         MacmktcstXGipWWCY5gMv77nOMkD6Y85w4H+mphzXvvPcHys7jI/K/bjNNNsHF+toRsR
         4EU0Ir6k9ZhpafWDOx63U6gat7ANeUA67lixf6FEfSUxpPruYgXPe0pD7Hc1NJ1tYuvi
         acxw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713716371; x=1714321171;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+JKXmunMMcM1F5PofvTI3mGTBymotx6KYlnv7bZOWA=;
        b=MKmIYQbVZ7I04f0H0/7pD0CXnsqd6HPq2sJrLqxWPoHB2RjK6irTOjxb/9+HWF2+k8
         yWN82eTcjBtz8rGhuBMVbnSiRnQvjeSRClINpmvqiz3bX3ZNkyxPE50FR4THVvIkuVcZ
         aklaoSTXRyb9YmgC1I+SVnRok9cqEHGbqKbZmr1VEdiAzz/T+H4y8vZFGnYQHtVLJNAA
         bZ0+DOOIUEYH232gfE8Yhqa3EgwBFmM3VI0/9gAzEPUOieefnqGHkLJT14TUHdk57jB7
         S2SmO2+OUEDjauvUmz9R6DrHrBkDzRGUzEPP89/byk+urx9va7G3peQ/lTWDhI+df8Uv
         3N/A==
X-Forwarded-Encrypted: i=2; AJvYcCVS0pjwDr5wEKCgWWNMxtQyKWyNUAuxo6v9ROgpftUQvnx9FUyOCQtutpOW60pZs6Qh1LwhxvfkV2AFRvoGXZv91g55Oi59LkOr
X-Gm-Message-State: AOJu0YzAQbnTrav3pUwr9pHhjwCqA8/rdMKB8HqS51IPuKOaEr92fokY
	H9N54XaSIM1S9VhWdiuyBMzg4s7C7ggjwolUunGO1MSPtlbD23xDZdVaN7LRDmA=
X-Google-Smtp-Source: AGHT+IEr1cCuITjz81sBe7cSuN0fBsHDgE+spq91H5VXejsSGlnb4NtxrX3x9R9FuayCBxk4i6kl2w==
X-Received: by 2002:a05:6870:d890:b0:22a:919a:dc87 with SMTP id oe16-20020a056870d89000b0022a919adc87mr8961639oac.56.1713716370776;
        Sun, 21 Apr 2024 09:19:30 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6870:d3c4:b0:239:e86b:89ea with SMTP id
 586e51a60fabf-239e86b9073ls907547fac.1.-pod-prod-07-us; Sun, 21 Apr 2024
 09:19:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUQOwbR4oTJN4fiuU0lgQmLL/Al8y72NKfmxITP0W9ucHzS4RaAqxIa3Iy4toIdpfesr1cZLqlV8hz+QZ7Tb1HfMYsvDKNmsl3yMzDK
X-Received: by 2002:a05:6359:4f87:b0:17f:7807:320c with SMTP id nh7-20020a0563594f8700b0017f7807320cmr9977103rwb.5.1713716369689;
        Sun, 21 Apr 2024 09:19:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713716369; cv=none;
        d=google.com; s=arc-20160816;
        b=QBWNm02OuoSrtWKTo9Wc8gO7Yiu5PhGdJwIH5e/Hk1nzE6PU1yQQgCIXEhILVnXELQ
         tKeKnz8t/HtOyxq1ezf+qtxmv5EcHtXHqeUr/KR/aL4qOWXAog33HEp3uFU92tkF9c8K
         wmqueNzneDJrePcbC55/1HSNC/9wc1lE4nvhGcWkt+jR8YRUJGA57qGPn59xMQhIhmKr
         5iooFJ3dwhETP+F8kcOLPIIIHGHb9+E0Q6GqIxUmOOClwT0caOy3k6Sy1IAEoN+8KVq1
         9ng5EiSIo47oZC74PiI+gLfEHDMvBI84NpX2m7Kbw03RA/TQzu8U3dM5yDOLkBpU4T2P
         +e/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=6pN06RTkTvOeNfhmu6iVQ8vEf/8YZywfl9NLUP2nuzo=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=d5wO2JIfLfR4a2YFjalF5hYnVuCxEmivYd0NNp4MpScW9cYChZu2eTLBbTvsb+m2Pk
         QdezhlzSs8gtLpZKuectZz38gHwjCUH7bdKgH3T0inniVgCQOsSZIVj28MwnRAYFYM/p
         RO1iQ0GrxSBxl1QAIsHFGEnNAZUoA0/nSp8svX/577iR+wVI2EF7lHMY2C9r0lHt+RLA
         puObuNpyeWf8Bn0Y0qJxJC/h6AOshURHxsHusHu7IqN/piZ0hGPzq1EAB32dBGEER33L
         77Z5rJLEMLBZyIBZ58920QARaTzRoH6b7MYozyWO1zmq0lwmd5RbaX6+PuWJyInqFLjy
         eXyw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id jr10-20020a0562142a8a00b0069685a3332fsi8359516qvb.463.2024.04.21.09.19.29
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 09:19:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) client-ip=64.147.108.70;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-639-malzeDveOjCaHhX1weHBbw-1; Sun, 21 Apr 2024 12:19:28 -0400
X-MC-Unique: malzeDveOjCaHhX1weHBbw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 06E651011A0F
	for <blinux-list@gapps.redhat.com>; Sun, 21 Apr 2024 16:19:28 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 02F8B43FB1; Sun, 21 Apr 2024 16:19:28 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id BEB9243FAD
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 16:19:27 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A21F29AA3B9
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 16:19:27 +0000 (UTC)
Received: from pb-smtp1.pobox.com (pb-smtp1.pobox.com [64.147.108.70]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-207-suxCDlkMP0e2Jtuy5LY21w-1; Sun, 21 Apr 2024 12:19:24 -0400
X-MC-Unique: suxCDlkMP0e2Jtuy5LY21w-1
Received: from pb-smtp1.pobox.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 69C241EE85A
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 12:19:24 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp1.nyi.icgroup.com (unknown [127.0.0.1])
	by pb-smtp1.pobox.com (Postfix) with ESMTP id 535921EE859
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 12:19:24 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.164.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp1.pobox.com (Postfix) with ESMTPSA id 99AB21EE858
	for <blinux-list@redhat.com>; Sun, 21 Apr 2024 12:19:23 -0400 (EDT)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1ryZuT-00032j-2Y
	for blinux-list@redhat.com;
	Sun, 21 Apr 2024 06:19:21 -1000
Date: Sun, 21 Apr 2024 06:19:21 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: writing yaml visually impaired
Message-ID: <20240421161921.ibvrxzjzfn2a5efa@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <ed94fea5-26ca-41f4-b7dc-6b090aea0778@harrastenurkka.fi>
 <51c07b57-049a-4256-a757-0036a3355c30@jasonjgw.net>
 <865b129a-17df-4725-aa47-e48387a8f39f@harrastenurkka.fi>
 <f8abb0f5-0fb8-4ee5-98e3-8b2e516b807e@mail.com>
 <172c93cc-63da-479e-9970-602785712507@jasonjgw.net>
 <dfbccac8-123b-4474-a062-bdd4a2321b7d@harrastenurkka.fi>
MIME-Version: 1.0
In-Reply-To: <dfbccac8-123b-4474-a062-bdd4a2321b7d@harrastenurkka.fi>
X-Pobox-Relay-ID: EA83746E-FFFA-11EE-B433-78DCEB2EC81B-04347428!pb-smtp1.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 64.147.108.70 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

'Elias St=C3=A5hlberg' via blinux-list@redhat.com wrote:
> Is vim there is some add-on available that would adjust the layouts when
> editing yaml files automatically, it's really infuriating if 99% of the t=
ime
> is spent fighting with the layouts of the file

There is an add-on for vim called yamllint. You can read the section on
"Linting" in the following article.=20

https://www.arthurkoziel.com/setting-up-vim-for-yaml/

The example shows vim editing a YAML file. Special
characters in column 1 indicate a warning or error
in that line of YAML.=20

You said you didn't like the YAML format. If you can write
your data structure in a language like python or perl,=20
it is very easy to translate.=20

=20
--=20
Joel Roth

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

