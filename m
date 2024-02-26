Return-Path: <blinux-list+bncBCCIDSOV5UGBBOWG6GXAMGQEROUFVSQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FD2867005
	for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 11:09:00 +0100 (CET)
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3c18df0db21sf5225223b6e.3
        for <lists+blinux-list@lfdr.de>; Mon, 26 Feb 2024 02:09:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1708942139; cv=pass;
        d=google.com; s=arc-20160816;
        b=CttLMAIP0NoWigHOKxc3ATslMVUDZ0C0Z9Fww+4W8oksYIDeRFvLBMUHzFXXOajpfm
         Yk2pYARPaRT/632FxZjzjK0Pq5xX1LGjXO4vO1gVC4aCQRQoUTT1tA/+lNlvgjbSEFuJ
         dYEKtWY62uH/X9DIRDyFoF9etOEhx4LeiX39Zik6TgMeg4/UfjN3QPyKAP10UVwri9kR
         ifGLFq1luffdmMGIUerGSEMTkc2zKYug3tkvXVg2yebvjWEFItNUkQdgjY5h6hweP8Gv
         RrKnS0YHDd/dTDc+gBRCu6iZsW2c1XWt2hva+A3/5Koznf7p5wQvCsUFWEIBamRBGHpO
         Y5Lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:reply-to:message-id:subject:to:from:date
         :delivered-to;
        bh=kuzg1GhkXG19gG4CpXkalq2A4vLtOOnSwxBMtGNmwf8=;
        fh=E+APLFBwy6FhNztlXIUNSAtvgRiDHveUsVpxymw1PTM=;
        b=XyVXbr11PUHeR36YBcqHcc4tdh/4maPPOjhCn7FQaQQJzZNkvCcOGkBp5hFXUsHkAe
         pqXoJqr7WMdIQxsqP7Rhm2J4/1C6ygg/ZbmvvHVjT2ohjNOkaetrnkHqsqf2diu1vPv6
         yHYXISGlXfIqYpS1l0XxK5o/r++fbGvXzsTtwqG3vOM1tAi6puoSbxJ3leB8HOynzaTm
         NYnydBKbwLGCFKAjmrNO6KbxB3S0RXAG00rDj48zwDVTF8rZ+lQMyXmH3DTYH3svWNTD
         n5LRx3IoHRF3/rjg2Ek+Ev17Yq/bLKQ0pqVTswG+EHbynf+kQVlVBAvZFTbPhLOkUFns
         dhMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708942139; x=1709546939;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kuzg1GhkXG19gG4CpXkalq2A4vLtOOnSwxBMtGNmwf8=;
        b=Yt9rFVzlEeEEy36VwQkiOx3t7peIyVumlwK3XQKcTxL3WYTUgMhV7tK4A3KEwDwb7I
         vrzUukdMJnPSv9J8E2RvXKWrL7Sqzrs/HcVHkFHehWmczPrBrOaAjmZUN0Cz2HEwL+QK
         i7bgpjE8v+IqAmTUooYOiXDv0lah0KobXettmIa1JKG4CQpCHwbMDyFzcNOSWJjzW+Ke
         kA6HHeLK3/N4jHo5wM+8RgikzKNlQ0/0ohfXD/VYUFkM4DkM7KR6vRC7UADmNn4t0peq
         o/KUYmFGUXV6Jrxz5SFioPmUTXfFR3ib6ia/2yPqBs/OlS00z+7G5oMIGwm5XW8xUJ7H
         hlaA==
X-Forwarded-Encrypted: i=2; AJvYcCXbqQhZIubomcLUD5+fFdsGchCh2RZeclKCPxnK7n3JyYqcGtyN4MPSv9BxwjiMVFmUxl1VAiLlByURMUbP4rP1spwACeH4c9Qu
X-Gm-Message-State: AOJu0YyYuyuS+rhKIdzRfLDzySxzdSG1JgVLujZQfWGpFqNk5VpWLLjK
	d8xafsWLBSRN2aKMvMlNgT7xSKWkFEaR20U2HJAHVXwUG8k+Yr320DWfOdifMqg=
X-Google-Smtp-Source: AGHT+IHHZowm3xVEyczYL91zfI/x2SDX3O1src9EOjtN16WppCYBrncHHCbvEvT5OTvuSBLEU8Kv6A==
X-Received: by 2002:a05:6808:3190:b0:3c1:a3df:fa6a with SMTP id cd16-20020a056808319000b003c1a3dffa6amr1748906oib.0.1708942138450;
        Mon, 26 Feb 2024 02:08:58 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5aa2:0:b0:68c:c65a:40a4 with SMTP id u2-20020ad45aa2000000b0068cc65a40a4ls4474959qvg.1.-pod-prod-05-us;
 Mon, 26 Feb 2024 02:08:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWP+0BF1ENHMtaIPZox4bJ+kTP/cnL2DRgPMJqbv7qBQunpTWroaOIFN5a1deVeguN5nUEQB2dYpziEWZLuh4zjVKBSSxu61bPPHrW0
X-Received: by 2002:ad4:5f88:0:b0:68f:e53b:7aee with SMTP id jp8-20020ad45f88000000b0068fe53b7aeemr9740478qvb.4.1708942137858;
        Mon, 26 Feb 2024 02:08:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1708942137; cv=none;
        d=google.com; s=arc-20160816;
        b=HPrqdw+FQV4/f8vIX9LV3Ve1cZ1Q3vqLcQKXNMqUuuv+OBVu/KOJME+wdlVqje9ssd
         landBbidZHMK4PRuef7huC7B/6CwqSF/oI1DoHG+fOFJiRQC7uo0ABmzjMA11KpmldAQ
         Z5sZj0/hy65q2EHU79RUD4OE3Wh+rnwV6gIPs/zFSwbJJDWKyXtkwuMfwmUVOyU2ohOd
         iW0mcTqUMeIPtRMKoDv3QzRe09ArGG0ls2fOOBIZegMAnBYAdk+6qUuo49wT82Ta8uCO
         P6HqPfTXjNDyJDlT/qtDjjd3pwhd92CMFU2b0S153z+YekD6w8IaDyErpcjxVRViZfKF
         N2qA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:reply-to
         :message-id:subject:to:from:date:delivered-to;
        bh=WurdgZFlcoSawA34Vhqz2uN+uChAsXRSJ/F3OSg/S3M=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=DvF1EJ1mtaR7JuBPEy/VtPVxM7gDJKhjfdpvM5gTNd7RkvWh/sjpb/7PRHPXI8LVj/
         L6dH7xV2/x1rvwl+d4GCJX8YoD9lFoFDaBVYlVAmAtKyRuCTfEofbiJZc2AJIu0XA2Ic
         Q1O8rLMh7fDyDFikecCYvmB5lXjdAikdpYhCjdE3TWQUoNjKfWTyQvHhSwHgqKayL7+E
         lH9DXJKWMksVUNaIuqCHzkUkDJzTbgMT9B7jVPxGIBr4Jl8AoHnUrVJ/QiH76G/RIrka
         BHq1VA6wt6KyRmlvO8R6F3Arh85Hva+oyDsNm4m/APNSXkt7SmMa6mPoVvPAsRbOxskt
         qwIw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id r15-20020a0562140c4f00b0068fa92d429csi4652359qvj.204.2024.02.26.02.08.57
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 02:08:57 -0800 (PST)
Received-SPF: pass (google.com: domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) client-ip=173.228.157.52;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-98-FMejvetPNNuwjumsiTybAw-1; Mon, 26 Feb 2024 05:08:56 -0500
X-MC-Unique: FMejvetPNNuwjumsiTybAw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4CFEC84ACA6
	for <blinux-list@gapps.redhat.com>; Mon, 26 Feb 2024 10:08:56 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 4A077400D783; Mon, 26 Feb 2024 10:08:56 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11390401546D
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 10:08:55 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id AB9F4282D3DB
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 10:08:55 +0000 (UTC)
Received: from pb-smtp20.pobox.com (pb-smtp20.pobox.com [173.228.157.52]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-475-x_CXKtmBM6avL6Vo7l9f5A-1; Mon, 26 Feb 2024 05:08:53 -0500
X-MC-Unique: x_CXKtmBM6avL6Vo7l9f5A-1
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 3F5C91B374
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 05:06:25 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
	by pb-smtp20.pobox.com (Postfix) with ESMTP id 37FED1B373
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 05:06:25 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from sprite (unknown [76.88.164.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 15C441B372
	for <blinux-list@redhat.com>; Mon, 26 Feb 2024 05:06:21 -0500 (EST)
	(envelope-from joelz@pobox.com)
Received: from jroth by sprite with local (Exim 4.96)
	(envelope-from <joelz@pobox.com>)
	id 1reXsI-0001kX-39
	for blinux-list@redhat.com;
	Mon, 26 Feb 2024 00:06:18 -1000
Date: Mon, 26 Feb 2024 00:06:18 -1000
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Subject: Re: archival social media for the blind?
Message-ID: <20240226100618.ydn7y7ay2py3esv6@sprite>
Reply-To: Joel Roth <joelz@pobox.com>
References: <971136C7-7CB2-4BF6-9528-60C5255889FF@cfcl.com>
 <Pine.LNX.4.64.2402252345480.900490@users.shellworld.net>
 <E1reXEO-000RgT-24@lapcust>
MIME-Version: 1.0
In-Reply-To: <E1reXEO-000RgT-24@lapcust>
X-Pobox-Relay-ID: B0C2444A-D48E-11EE-B119-F515D2CDFF5E-04347428!pb-smtp20.pobox.com
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: pobox.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: joelz@pobox.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of joelz@pobox.com designates 173.228.157.52 as permitted sender) smtp.mailfrom=joelz@pobox.com
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

On Mon, Feb 26, 2024, 'Artur Rutkowski' via blinux-list@redhat.com wrote:
> Hi,
> 
> Little off topic, but answering the pandoc's problem:
> pandoc --from docx --to plain file.docx
> 
> Yes Karen. Search, search and search again. Then ask anything.

Hi Karen,

Probably your provider has man pages installed,
which are the original accessible documentation. 

In this case `man pandoc` executed on your linux host
followed by /docx will bring you to the correct line,
in this case, already in the second sentence of the 
DESCRIPTION section. 

For me it's a matter of pride, and also respect for other
people with expertise whose time I value, to at least read the 
docs of the programs I'm having trouble with before
asking for help.

Everyone misses something obvious at times, so I'm stating
this as a general principle.

Even if you don't have the man pages, `pandoc -h` returns
useful information, including the promising option
--list-input-formats.

`pandoc --list-input-formats` generates a rather long list
so in this instance I might filter the results by piping 
the output through grep: `pandoc --list-input-formats | grep docx` .
This returns 'docx', and we have our answer. Filtering with
grep is usually easier than scrolling through many lines
or pages of output.

Have a beautiful (night or) day!

-- 
Joel Roth

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

