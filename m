Return-Path: <blinux-list+bncBCV3N6GOXMCRBXHK5DBQMGQEMD2QYZA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB1FB0A37D
	for <lists+blinux-list@lfdr.de>; Fri, 18 Jul 2025 13:51:58 +0200 (CEST)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e32df3ace0sf176537285a.0
        for <lists+blinux-list@lfdr.de>; Fri, 18 Jul 2025 04:51:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1752839517; cv=pass;
        d=google.com; s=arc-20240605;
        b=j6n6Unq3LcjaMZZROJOAXUIF1X0A5iBi7wALsOE8fzD4ZgRV55Ha9Td5hFB3d19c8p
         ldwZwWeEJ0zTG+le/hel3ZkrmmpvXvZ9J8J675tDi18rZnxsXKW3evMxqybZDz/8KvYP
         oXBqRBnBDmjppLFFhMEc/028zB3XtI22+RLEbC1u9+cGN+SiswPsi48DbrYy9vGv+Db1
         gLV9zYk6zwDBe1pWRhRpjLJdmnmQIqImWzii8/iqyLkI5GXbgkeZm0p9vJCwmiEF1F6i
         hL/p8R3B9YfpWvxLvLWxHmJVkoTjVppw+FsqtRn8gXexIezl43q+FLHvme2Rsw6jDrjg
         x4rg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=45mMQZajGNXlkghnSWbTpNiWiyM4saK+PtX+N7mJZtE=;
        fh=PRW2UJIDaLikkCSaRYBo+v0UtIRBcdEVYgmMuFKguxI=;
        b=OAYbpKUwF7BQb8G02ePL8qTb73wYV40N7XHJTP7r1fksOlwZDV7wsNcS+r+EyLhQlg
         NlCaXFaVlxHShCcl1l5xQr6Poz5v+Bx8nZxYqqeGQF34jZa+jr3LHF3bC4PUgLOd6AOz
         QpZlkSgnFP0OWXA7XULnf+nJcg3nC9SRKlCkRr7Y0tYdwAQzb4AxCGPwGbXvfGMe500D
         cKi7/Rpxp9uD3UpSUMGvE3purO/GiBWx+V5OS3ZQOew2x5/xFFkXbvCx5o5zdovsfhfm
         Qc8OF1HxyAC1F6z+vp1b+Mkd1SF8yPaSItZIEMSuwkuc9ZUpUwlDWZCAzpwp4+AjU7H8
         ypkw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@gmx.it header.s=s31663417 header.b="rOqct/jl";
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752839517; x=1753444317;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=45mMQZajGNXlkghnSWbTpNiWiyM4saK+PtX+N7mJZtE=;
        b=YSTZKt5Q61/mpplBF+EXBksQUQz3fLqGKAF5+z6PomP2N6VEYcyxWKgMMm2fZLikCg
         FXX6oqSDE7bbTTUKVvkb8RPhKcjNJBc7cp6M4jcTD/kHqlo0ukPBNF1inILodSuF+VrT
         zL8U18MUQP0H2Hf41VXMNwv8o9kdsBUXfbelUfEijUjl/LH9coo+jdfwdl6w+ciIa2G+
         3NFxJCvDC3NQZvOHUYyN6gPhsLadO7peWfG7BO9+xdp0B2bGKuhkq/+G0U6n0qL624QM
         QyEQUPh9upw/YIz1MuAY8WsrYZGI6O6skqPnim8XfmGGQ+cruARnIji7xrZP9Ecbdb5K
         GXCw==
X-Forwarded-Encrypted: i=3; AJvYcCXFTEWDYl0PRsn51YzCuMM8tF7kQJKNd3exO06joPCSVosowR+f26OfN90ZSQnmW6JgjCTTbw==@lfdr.de
X-Gm-Message-State: AOJu0YxWZmNnrQQ8XpbRGP6AV4OIyoympc1o9gJELSlfi8lAxd4XenEW
	OIv6RrUYGzJleLrslDSJWCtqEIp4MIk6Dg8gyHY5gno7XKE19pPJ7DNTjWq/QcSPjtk=
X-Google-Smtp-Source: AGHT+IFC1oBPy81/0YyhM9rnxHlvj9GmRmNs0CJwS4tmNhg+sIMu8NpglXnJ4DQAbNtDNZu2/D0+Gw==
X-Received: by 2002:a05:6214:2621:b0:702:ca93:494 with SMTP id 6a1803df08f44-704f6b0888cmr141382896d6.41.1752839516928;
        Fri, 18 Jul 2025 04:51:56 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=AZMbMZexHxTDmBjfiYDvjUTsYvSroRPVKvoFrZZdvuFCZnOYWQ==
Received: by 2002:a05:6214:27cb:b0:6f8:afe1:86df with SMTP id
 6a1803df08f44-70504ac4aaels25553506d6.0.-pod-prod-08-us; Fri, 18 Jul 2025
 04:51:55 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCW7jotbsV+BvcJsDbdheAVzrEAL/9tWRfKzkyuE1tYW8gGPe+rya5l6v5yzGjfsUxyTsP1DTmNfQW1ebA==@gapps.redhat.com
X-Received: by 2002:a05:620a:7085:b0:7e3:39ad:4c60 with SMTP id af79cd13be357-7e343592d4emr1620041385a.25.1752839515611;
        Fri, 18 Jul 2025 04:51:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1752839515; cv=pass;
        d=google.com; s=arc-20240605;
        b=bYAFeAtHA28T25TWbLT00L+lSC7LG9oUWRv+Jc3wrXu5DAblitEJdR9CI6aBZMmPGR
         ytRHDVLkwpA6C6YAWGXeSEto9U3nj5DLAZTzArv5XtzlgT7dKqer29j5Rp7IJ/PngcfP
         mc6w8L59E5pakOfl0YcniFcr0MF5vZes7WQAb/cgnkmCzdmd6AAneg65AQdP/lp6c4Tu
         cSvH3Wab1pPu9CQOGWhm1IAStzDxYMNLAmx1uj0nOHepYzmvhD3duytg55wy7uZ/3DT8
         Jo9+17n62plxNr2RjkUMCDhnnH7AzKjxOOS8azPKvPi1BhZzfhvyatRhiAfywcw61jLc
         l0Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:delivered-to;
        bh=h/dN7lzD5nDNyWRBuBR/Ao6TpJdReVfTUybo2SH/+Z0=;
        fh=uyQVZSRoA72ttR5tZwCWZCTwCUrLSPrGFeDHsWdY6oA=;
        b=cA09iwnK0j/qfrZtqZZ6usSGE+uivC6VOxGGs/XDMtkDyb0vgUHQUqhL+ESTYz1qjJ
         rzL3uq644yH5KArKoO4XA/1cZEUN+wcanOVFboWX5JB5tIpaoJ+4lGM9i8wwif7mSasO
         5MkzFRwJtqtKcqFK7NKuuTkjE/ywIZFH/XnxuxlD+MeRUNqq2asOYoSL5ywQwUQz3ynL
         uAE75jHO5dK6NgrVgh/3A8r5sY+PaDfrO9EDj9OtKecA5rWq6LtQIJg36IKHxFE9FP0r
         7iqn5IqtiAO9/HPj9v6rNlQL0hiyid8zG2cjT/EUH7IJ/u6D5FIyLR6gs7TWdSzDFEuQ
         tjMA==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmx.it header.s=s31663417 header.b="rOqct/jl";
       arc=pass (i=1 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass fromdomain=gmx.it);
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7e35ec4bf4dsi11319085a.523.2025.07.18.04.51.55
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 04:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-421-URwqSePLM0StCR5SfJ6evg-1; Fri,
 18 Jul 2025 07:51:53 -0400
X-MC-Unique: URwqSePLM0StCR5SfJ6evg-1
X-Mimecast-MFC-AGG-ID: URwqSePLM0StCR5SfJ6evg_1752839513
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 30B751800C36
	for <blinux-list@gapps.redhat.com>; Fri, 18 Jul 2025 11:51:53 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2F2D6180170E; Fri, 18 Jul 2025 11:51:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 2C5D71800D82
	for <blinux-list@redhat.com>; Fri, 18 Jul 2025 11:51:53 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id BF20C19560AA
	for <blinux-list@redhat.com>; Fri, 18 Jul 2025 11:51:52 +0000 (UTC)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
	d=dkim.mimecast.com; s=201903; t=1752839512;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=h/dN7lzD5nDNyWRBuBR/Ao6TpJdReVfTUybo2SH/+Z0=;
	b=Uty9bxuVvKwutl09JjHiTPtopuDZtulJWE54JHXXzoWg4G+2xdY/TmVmppeMcfS1+jKybw
	nIFrzK7sm7DwAIwQNtTWwW1IZBeqxkCZ+2DzSEgiDDck+0Cv5tO7zJalBtwSPtz90ZW/nl
	MXOvglOOT2zpNX+YqjyS4I7ZJdiWCX1QoQ0pU5tvn3NW/mLe/UgkNyrz1VyuIGv4KGTOVd
	Cjjj3Eetz2CEXoz6l3KVXigzRMkLlxdEEDemk3/u+G8As4fe/UzehHV7bBWnrdFUFYqDsS
	7eTK1GjMyB4t7ovCPbiZlo/cYYHbhp3JbrwTQxFtYycsajaskCzKGOay4IEHFw==
ARC-Seal: i=1; s=201903; d=dkim.mimecast.com; t=1752839512; a=rsa-sha256;
	cv=none;
	b=GeFEM8axFHp7p0aTd4k3GmVT4dDxq4wsXN7QNgugS6yaHF7hGP5+uhYqD+eHWPCYZIynAn
	ye+DCw1ELsr5kd9gYD6Tk+UDrFAJtpjLciITumT14cV9eiduy7O5lZR66JdL1JdQ9C1EeJ
	O6AqwhZELv2z6s+rTTkS8uSCG965tYtvdet+WxNVXoUbcm0iNIgXhLcXh4j0n1StboWloh
	TT4tduBP69FRVQZ12i7VUmf70G74Z2QQeuCRyAXKwpe+X30lI2BZ3fnVCkYM1Ky0/o1djm
	YpSAyURp+xpSQiUbQocyC8ST/ksyJysfJTpEErNU4FkwAYLx8dCBmdTuEe2YXg==
ARC-Authentication-Results: i=1;
	relay.mimecast.com;
	dkim=pass header.d=gmx.it header.s=s31663417 header.b="rOqct/jl";
	dmarc=pass (policy=quarantine) header.from=gmx.it;
	spf=pass (relay.mimecast.com: domain of kyle@gmx.it designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-417-A6D4lzuBPKaGuQ_vuaHgnA-1; Fri,
 18 Jul 2025 07:51:50 -0400
X-MC-Unique: A6D4lzuBPKaGuQ_vuaHgnA-1
X-Mimecast-MFC-AGG-ID: A6D4lzuBPKaGuQ_vuaHgnA_1752839509
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.35] ([136.47.142.229]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MdNY2-1vC4Mn3i7s-00nFvB for
 <blinux-list@redhat.com>; Fri, 18 Jul 2025 13:46:46 +0200
Message-ID: <3964f846-0ad4-472f-8a95-afd237438144@gmx.it>
Date: Fri, 18 Jul 2025 07:46:44 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Majer issue with gnome setup in fedora 42 with orca.
To: Blind Linux <blinux-list@redhat.com>
References: <7FF225A2-DA91-4EE7-A1F3-8D92208F698B@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <7FF225A2-DA91-4EE7-A1F3-8D92208F698B@gmail.com>
X-Provags-ID: V03:K1:NlAe/m6mtFkWMX0QwH/KuqW4UT01FniL1+MRHL4m+8puNBH4WmE
 62hJy/qrvBUBolnJpl4XkSnsHA1H66bxKzr+he0jIykv9y3QHcr4XD0om4zweJU3/ZsnCy7
 omUmWaELjwdBOJA0tzg/8lJTlZfn0gdVJv5Gqg8PrSvdMfdpEMQu16+eXL+/hB433kaYTDX
 9mM6/pC+PzZMt7CcF489g==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bldPbok5Ph8=;N/4TaFanBAf3VOPT7Y04SeRQu/o
 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
 dXnWxbpsmSwfvVm2hHQoumU=
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7ksCEgGvRirk_hKoDmJl9tzOZJrVRnOxoqOg8k09uf0_1752839509
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmx.it header.s=s31663417 header.b="rOqct/jl";       arc=pass (i=1
 spf=pass spfdomain=gmx.it dkim=pass dkdomain=gmx.it dmarc=pass
 fromdomain=gmx.it);       spf=pass (google.com: domain of kyle@gmx.it
 designates 212.227.15.19 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I worked around that fairly recently. Now if I can just remember what I 
did. I recall that the time zone input tries to get your location, but 
if it can't, you can type a city into the search box. As I recall, once 
I started typing the city into the search box, it filled in 
automatically, but I still had to navigate the text box by character or 
by word to see that it filled in correctly. At this point though, the 
"next" button appears in the tab list, and we're good to go from there. 
I hope this helps.

~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

