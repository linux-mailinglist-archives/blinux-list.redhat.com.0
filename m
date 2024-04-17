Return-Path: <blinux-list+bncBDYIZZNASAHRBBWG7SYAMGQEOBSLRAA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C9D8A7A1A
	for <lists+blinux-list@lfdr.de>; Wed, 17 Apr 2024 03:16:56 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-43686f9cbafsf58308611cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 16 Apr 2024 18:16:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713316615; cv=pass;
        d=google.com; s=arc-20160816;
        b=aFnNG7l0AuT4Dwwm0NM4slkgGLiVwVG7ZngZJ+i0VulcBzgQdtV3BbUXec+CBPTn5F
         G9FAqz5InnWhTYF306gXWHEx/x3kAWLWg/4HFuty/2fQzx9Y92nZDr4wnr7W26OsTLsX
         O1Fyjr27DH9s8sZ1XkyQ5nsHeLHG0t3vhOGqIvdPVLTvZsYyZP/FYqItxNNSWni2pmyU
         wU+oEfboE3mGaz11NfMxNcSbeCKKZP/sWI0RM1EBd5ytte1h45neCiE+anpw+MJZ5jpx
         YrvVJcWd4gwielFoFOxqHdPcD1bkdVOxc6LA0oQAxAFlc6dpMdFwpQtYhB0qkyjL6OEn
         R3KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=xvqcIwJ3iLnqFPTh5+TWMIF8bCSlt/YB3OgGhE14DZM=;
        fh=64AY/ztQvR3O2OeBO4h8Qp9x1aBBnjnAYx/Mqn1cS94=;
        b=Cd56zNMOnIpqQk7voiSv+8+vi8nMR8tLtvx50kjbeAmQ5mPS545DockjcPkFEkHJRD
         netlj3uDYLVNACLX6eHJz8dXMlrColmJ9ONrTd9xSw7RkJiBbv7Colw1dOgG9BobdS4t
         ct2rQxH1Gps5OmtoDTuqDI1Rvo4d5j/8oa1iNwFIEjXPBByDSa88L7r5ZUYvZ85DgrDb
         JZuvgnwRLCGAdh9rJMKzMYTtnf8/sVuqmyKT71SMxIYoGBdbMgPbkwBsGGjyEW8prxjv
         cJ0O1BwRMKOrvV4JQKA2uxr+e721uHiBUkplMTS5N73g01Yi4xfS7qtciudd/F8tZKiw
         GxEg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713316615; x=1713921415;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xvqcIwJ3iLnqFPTh5+TWMIF8bCSlt/YB3OgGhE14DZM=;
        b=GVJ2ECmKC0lFd0E8Vzx600QICmDQ6cPygtS1USbDIN8RBDG2z4aDBQPPp+ntd9MqeE
         aLlApUgwL9fxsPTWIEYFlXa0AG2SSyTSJBnyUu8cIG4PThkVExOJShj07LMMdp1DC339
         kKJAL0a/9uo8UKMmX8orW7lU24P3AKRrej5hDDB0ikRiWMVnqHaTZge7lV2ELSJd3VFs
         ln/8btneLiTe4qdg679bUX8t2XbTxzqSJOTTRVO9vXfkC+lO/awAvnIHycXQ84+J/AEW
         IQabkMPEXS6cyL0zlFbB0pDfa15+bMwon4D9Con8zLkkiE72M7p7GUL94A2fM+H8sUAd
         IOgg==
X-Forwarded-Encrypted: i=2; AJvYcCW0sTi7vmFRks5aDzL1xHf3/BsS3mVwQYSDhn9G+fvEtDoF44pmdu0oio5btvzlSlLPsCudR2HUP+W3s1DE8aBL15J4skr6liZB
X-Gm-Message-State: AOJu0YxsA9i/sH9W7BNnUiGcI1XSqHzicZZPQ3gr41u1peCWfN4PK+NM
	0Wal0Vmmui+mCReIFhFqP7uaKJ6PJaTyv1Rrx9/Mx2nx2cKOcNCvOGnHftXoPBM=
X-Google-Smtp-Source: AGHT+IEPAlhmVH5tTF0XigVF+L0IpCw7Zp4akeUJG1sE0xYpKYMXjBITwZJhS1tvhbyV1YWOu8t7wQ==
X-Received: by 2002:ac8:5f8d:0:b0:436:4da7:faac with SMTP id j13-20020ac85f8d000000b004364da7faacmr17415979qta.31.1713316614581;
        Tue, 16 Apr 2024 18:16:54 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:104:b0:437:d3a:5983 with SMTP id
 u4-20020a05622a010400b004370d3a5983ls3121227qtw.2.-pod-prod-09-us; Tue, 16
 Apr 2024 18:16:53 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVgqxxKbgo6o4/Xf1EKIohTMWdwSTGdx+ajaz+7TvkRG8KgaXTkjGS5T1ZEC/D7JX69r+5HudMNcDJq3D0nVIBvnNw9hSfboOv8cBVO
X-Received: by 2002:ac8:5a43:0:b0:437:6715:7732 with SMTP id o3-20020ac85a43000000b0043767157732mr1135461qta.14.1713316613739;
        Tue, 16 Apr 2024 18:16:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1713316613; cv=none;
        d=google.com; s=arc-20160816;
        b=gLAm9QQfmFQvOFCoDoyvUqzhliMk0SOL0w5Z+5pYZjo6iYPn92ctlTWlHBgleBhmYW
         WaB+JQDOOhb3nNCgkrLAzevheSSvyEAkpOJl/QwTAtMR+kohqGhJxMYANCsF9anV9Ju+
         /NberL3SAkQi5Rep0OQ3exh660i1vLTdg0UDz/u/t6ZNM8hK8wNEezw7fzofLdGD9i4Z
         TJNPSJXk+ed1JnJVbozUePDlvhqNxgLnwu4PLFuvJAn17veyHmPSYF9Vo5vb3VSc4atU
         Mgk1cN0ByN+wnSF92kebzrXRWFAHDLNEVc9Ry2Pr24iQP5o6igf/vRxyCB7MVHPAnUxo
         lH/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=ChZ5GsQN4LdNKCRKigdnPGq8qJ6Lppt7GrLUl8se/hY=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=VJflt9dUNYZEf/WmXkapReYmSDzRiQgOuD09ibXNsguy6lyFuBo9z6BCPHbslexhYM
         xxB54/a4CHc/l08ShUBzasn0mh7S+V0C0D4t3FGecVLWAiEwJT54hKqj74eVrFsbPNhL
         cohg23ikBmd7nABFIQ7jpt71h7iMqri+Zw7ydnFuUGnNKE5NYvsVoq5+hCKqroLRwEF6
         Ny0CIZXL4ay8f7Zwy9Q9IdPVROQq8Zh78eiQzOCY0BwTx91720H8N5CPwSPRijXWLSeP
         04+2F2j4VRf2KH6k3TgBwu8Yorimdwb07m0FHv5L0Qn65q3uQgs6rBY4LFE2t5dcSMXG
         MCpA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.177 as permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id v12-20020a05622a144c00b0043674bbb7f3si13539932qtx.334.2024.04.16.18.16.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 18:16:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of jackson.rodney.1970@gmail.com designates 209.85.167.177 as permitted sender) client-ip=209.85.167.177;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-fZG5seq_NQ-GzN4ugxngVg-1; Tue, 16 Apr 2024 21:16:52 -0400
X-MC-Unique: fZG5seq_NQ-GzN4ugxngVg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3E5EC801787
	for <blinux-list@gapps.redhat.com>; Wed, 17 Apr 2024 01:16:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3BA58492BC8; Wed, 17 Apr 2024 01:16:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 021D9492BC7
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 01:16:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A0AFE38049EE
	for <blinux-list@redhat.com>; Wed, 17 Apr 2024 01:16:51 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-MMSi0oG1NCeWkemUmkMjgw-1; Tue, 16 Apr 2024 21:16:49 -0400
X-MC-Unique: MMSi0oG1NCeWkemUmkMjgw-1
Received: by mail-oi1-f177.google.com with SMTP id 5614622812f47-3c70e46f3caso1625825b6e.2
        for <blinux-list@redhat.com>; Tue, 16 Apr 2024 18:16:49 -0700 (PDT)
X-Received: by 2002:a54:4719:0:b0:3c6:f557:9454 with SMTP id k25-20020a544719000000b003c6f5579454mr12484922oik.59.1713316607877;
        Tue, 16 Apr 2024 18:16:47 -0700 (PDT)
Received: from [192.168.4.28] (63-142-94-63-142-94-152.cpe.sparklight.net. [63.142.94.152])
        by smtp.gmail.com with ESMTPSA id h10-20020a056808014a00b003c709708e2csm1248228oie.29.2024.04.16.18.16.47
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Apr 2024 18:16:47 -0700 (PDT)
Message-ID: <0b16705d-4153-46ed-992b-047867ad29c7@gmail.com>
Date: Tue, 16 Apr 2024 20:16:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: changing time zone
To: blinux-list@redhat.com
References: <B60FBC29-85A3-498F-AB59-FE948B98E5EA@gmail.com>
 <32bce24a-c40c-491d-8932-4993cd818a19@jasonjgw.net>
From: rodney jackson <jackson.rodney.1970@gmail.com>
In-Reply-To: <32bce24a-c40c-491d-8932-4993cd818a19@jasonjgw.net>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jackson.rodney.1970@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jackson.rodney.1970@gmail.com designates 209.85.167.177 as
 permitted sender) smtp.mailfrom=jackson.rodney.1970@gmail.com
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

I am using Fedora-MATE_Compiz39

and i am having an issue changing the time zone from eastern to=20
central.=C2=A0 It seems to be stuck on new york.

i go to date and time under system then preferences then hardware and=20
then date time.

when i go in i have to type in my password to make any changes

when i go to the box to do a search i type in missouri but nothing happens

i tab around and all i see is confirm or close no list to choose from.

so what am i doing wrong and=C2=A0=C2=A0 how=C2=A0 can i change the time zo=
ne

rodney


To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

