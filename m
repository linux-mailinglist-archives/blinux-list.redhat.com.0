Return-Path: <blinux-list+bncBC3NDNGRUAMRB34CUOVQMGQET3Z22PI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE587FF7C0
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 18:08:01 +0100 (CET)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-1fa3292fd8csf1274117fac.0
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 09:08:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1701364080; cv=pass;
        d=google.com; s=arc-20160816;
        b=duc3YQAm5MYW1jbmM8R1BE1YKJwB2X5aePS8IaGAzXlPrB/H2B0kDDf5M8Rc/uvr4H
         YCUKI/mxhgM6Xn8wdMlCuU6fgDaC70h8hgpM1Z71CMWuHFfdnHxXaKK511cfwKgg/7st
         Ps0QHoewIlqb5+4zsWtJ3YsmxDKVbtXIyUnniyIT9MSTAvqTjiwv0EgdhYpmdLHRDnBV
         /isqIAQL1FRnSmxr1p2VeZuXrWwanb9J4xN5moTIgU9HIk2gV45Yj71vx5h0RnVRxPTs
         ENYsKwaGM+2LxqPV9iqEXfwGP6QdJvNGhrGfOVLnuVgPXEBXvDFKie3XHUOUDJ/aHTr5
         pj2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=YSEWBiFn2kz4OUMEXzGBE9rNC8c50TimW6RmYhrbcrs=;
        fh=ZIdLSMhC7UZxz6Ja8AluQcLdIWgyQrLKfBs0+lxMwo4=;
        b=nBPgdqmHyOako2EJ51vj1vVweGT+Qu+ufO7NuR6QZ3qrM02lL7N+2G3AtU/H+WRUko
         0v++WGF+HRMMKvWkxF4FOfS8Q12XOSDrMoN65YIpPmT4IwKocW3ZMkhpeA2kGSJVEZvC
         WhWijFF0aX0Lul5KldBf73KuFjavy4XI8c4FMbpRV/MM9hFWygCXdYe//w7xLg0PG1/s
         uM7gLE9uYSdsM7XauTgwSJKl1/R/seJBsd1gx/sL+tgeCpHH1JHU315JnD97sHVqlKza
         rF2niGDzWsKIsELagvkT18o2IDRXkfu2yN1VsUcDQNgw6kwwFFnQaNJpVgdFn24ghaFG
         5xtw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701364080; x=1701968880;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YSEWBiFn2kz4OUMEXzGBE9rNC8c50TimW6RmYhrbcrs=;
        b=nKs/7EelAUN/76LvQPMU9vnsTOeSd5DTsr8k7QJmnuC5HCNFcVqVNtk1ZNa3Gsws5T
         Pq3dc/U8gRiV9z4C4OXoyZLOUHBwJNDBlvU8BFjQ2Nce3oVs2Al7T3+swXurfx6BhonL
         4goF7OPlxL7MGZrdDj5rGpGVbCRrtU87tD6kOGMk1075ny1au/MIE8/bcQ8ffcZPIZv2
         3RqEpYzmaE8r6anvOtDnm3T/it7NSjNA6qBxd43oqoXxZsxjK6EL8Kv0Vve8w0uQBIpX
         drjElBVXY99JUpiGrPP2sik4qW+bBmXv0Jbg54w/MMRd76qmB8+5Jqg7ub7s33TdZ0su
         3IEw==
X-Gm-Message-State: AOJu0YzKim3kbWbz1L/dwiu/ZGAXamaD/lAZDSLWRbRZbd2KN0CgMF7i
	GxtkWOKf4caK9eetwJQiv1cY+A==
X-Google-Smtp-Source: AGHT+IFEopoihaIxpnLDQBN20Tpp2z8I3zSaJljPuabD3hepwEYQv7ithuzgL9ZZ3rer6dCIJxhzIg==
X-Received: by 2002:a05:6871:799d:b0:1f4:d347:df06 with SMTP id pb29-20020a056871799d00b001f4d347df06mr25375405oac.29.1701364080321;
        Thu, 30 Nov 2023 09:08:00 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1907:b0:423:b70e:f8f2 with SMTP id
 w7-20020a05622a190700b00423b70ef8f2ls1529012qtc.0.-pod-prod-08-us; Thu, 30
 Nov 2023 09:07:59 -0800 (PST)
X-Received: by 2002:ac8:5143:0:b0:423:ec7b:e628 with SMTP id h3-20020ac85143000000b00423ec7be628mr4311423qtn.49.1701364079304;
        Thu, 30 Nov 2023 09:07:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701364079; cv=none;
        d=google.com; s=arc-20160816;
        b=nyirUuVGXBw3kz+LeEBz30BPke1u4zAr6t530EiJ6NREAf8/24p7tsSxZGOlK7HjLf
         hxNVypIZm0Db0U3kgzk2VFIt8ahJ8y39YwjpzVyZyLXACH9bu4pgThdNMphsRVMKr7rO
         P2TYJAngfm4xVPrY1FR0irP8Gp0PaEMCmLtmT1LGD3AnA4xc3m/Gpdhkdfp44I5Rt0JV
         YM2dsWMCa3H58kOeWVuQUJl2ifKQQlr7axXH14f+sVWpOMiMtC5ax8F+Klp4cJQs1o5O
         vYNgQv8wZ25J1mfHETsChpjQDQpcivzemqNf44B5gombtz6KPUmJLd25lozCfbo+sFLv
         BoYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=Cn/OBjplhGasAFZdDJcdq1Cho7PIVGrplPNyGWtSYdQ=;
        fh=ZIdLSMhC7UZxz6Ja8AluQcLdIWgyQrLKfBs0+lxMwo4=;
        b=C2hS+kLNdK9GXzLrQYeEw/HQKItFb4i6U/Dy6u1FkgeC71I1WqNbF3wLjumFBAZ8xE
         kwKnyf0b+pDhX/ZrGtrr3sBcEnP5Al8G+a1CAESOVY5yr8eJQnIT3hK9tfCW/EIaFS5y
         6d6TjmfADzjdo1Mxx4hbZptPT/K5k1KK43NlsLQrJLzP6Ujpd5wW/zSiNCQmYoTU/ZZY
         keYJJYhDhGTRX/C8B2TLHDgNXdg7B1OkI5lAUctimbb2cjMYwuXn/fPcs/cnI986q29n
         cdrHtP4rxeWTAxYrV7nKl2+r28nB0G2WgmVwpRok/eHSQ+tKU3UaxBbFhpraJc6GwrI0
         rxEg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id o2-20020ac84282000000b0042393e026basi1325568qtl.478.2023.11.30.09.07.59
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 09:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-25-vn-9yxVRN16KcUVQ6W0ZyA-1; Thu, 30 Nov 2023 12:07:56 -0500
X-MC-Unique: vn-9yxVRN16KcUVQ6W0ZyA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 07A17811E8E
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 17:07:55 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 047542026D68; Thu, 30 Nov 2023 17:07:55 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1B612026D4C
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:07:54 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CF05385C1A1
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 17:07:54 +0000 (UTC)
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-284-6MC1wnNzN1KkCxuYIN8KOw-1; Thu, 30 Nov 2023 12:07:51 -0500
X-MC-Unique: 6MC1wnNzN1KkCxuYIN8KOw-1
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 2E1575C0227;
	Thu, 30 Nov 2023 12:07:50 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Thu, 30 Nov 2023 12:07:50 -0500
X-ME-Sender: <xms:ZcFoZWRPK2kF8tOf3fSYEAWWeUg6nYW5h1oeRkJQjy87E53ilE6L8Q>
    <xme:ZcFoZbzB6uAFG2kBVpPGcQmKRFvBYLspBKHn58H6N1ZHkQmwASH2dfkSYjvoCMGAJ
    SH45ZGWZ8HehbhXtbo>
X-ME-Received: <xmr:ZcFoZT29s0bT8zChiviulktm-fdep6enByIgolYHxy0Cj3GafrnHrOM-ieyvP7h1tXTU4WY5GgwQIXzb4QLZajTXCVTFheCh8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudeijedgleeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvvefujgfkfhggtgesthdtre
    dttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhht
    qdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugf
    efleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihii
    vgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuh
    hmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:ZcFoZSDNqzWkEP9akZLy0-9qwYLKr78fUTZk7qu6fFHzWkYVYkwd9Q>
    <xmx:ZcFoZfjaNErXvSPjfeNS8VWYNj5d0jWn8K69hyrpSwX8uIOvBLjxkQ>
    <xmx:ZcFoZeqnwoLDuJ-EFeB_a9n5gGpDIkCNLzfw66heLsD-cgVGOkOX8Q>
    <xmx:ZsFoZfJk0iS2o7WnL0lrOMEJpXIlexIjpDoRg3N8ndwWfL9WFH0yBg>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 30 Nov 2023 12:07:49 -0500 (EST)
Date: Thu, 30 Nov 2023 09:07:47 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Tim Chase <blinux.list@thechases.com>
cc: blinux-list@redhat.com
Subject: Re: links the chain stinks!
In-Reply-To: <ZWi9fsW48rqdh_os@thechases.com>
Message-ID: <4c9524e6-3b94-f825-6fdb-bdb2997e5bb4@hubert-humphrey.com>
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com> <ZWi9fsW48rqdh_os@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.28 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
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

Well, thank you Tim, that works, and it seems to stay, but now can I make the 
tab work like in other browsers-and-platforms? Thanks in advance
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

