Return-Path: <blinux-list+bncBCV3N6GOXMCRBGXH4KWAMGQESW4AHWY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E7E825DCC
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jan 2024 02:57:47 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6800e52d47asf22206336d6.1
        for <lists+blinux-list@lfdr.de>; Fri, 05 Jan 2024 17:57:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704506267; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6qL3BHDjyGKUcnStkbJLzikgK+/VSm1aNSc7Dscc124mpko78aQJrS15mSUoJcXLQ
         8VLtSRpP0V56KV2RGWGm01ppErLUa2Lnl0LlFYRfftNg/tlrgWqqrnA73S4B4zVPA5oS
         WtNatni5ikiwoK7mCIZoeLWT/MYOq1kdlFTEFfslmoKX43ecqAv8ztBtmO8PhcAdSYXy
         /hXmHDDTzlTuhqAEHiLWZa3ARCbrJ7e+lqsvTCgE9fIc87whfxHy8kZod65A3p9pH9xV
         gwsuBFKJRhXxIatAU8swGsNMKSy2xHKT/cWfEUExOBZHACPlmj3oNTrMMAKKlYhPP6yh
         vSJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=qCdA6GEr5h3+HCeAXM5eKheAgHp68shemgTABuspRvg=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=PvnVZKV+HweW3Yjzf2M7NEIrbECEVIDF50BCtJgFA+oSimndqUOj2/yEMB5e6szMAb
         817bTldvqHF0h3JWhfhcYYzjSs5gT9/i6f+e1/72Nhqw5556Pvs+yPvDWw0l2K9isZDs
         cREJkXi+kIhRVHBw1g9NrCdS72AtvWtWrS9hgcyzJ/G/wsaA2HM4ZzLcEvLCYbETErGX
         adAInsrTVIVTAvc1a6p7tDjmDPiQ0xPY05Cco/5ffqugn7HIWhEj0I5L2rXUViaSXi/J
         IGpgwSLNcEHCw0MZnpABpQorqWInzZBOIGLG6HolZnqZOUhloDmXiqZvnfjftUAgR4zD
         oINA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704506267; x=1705111067;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qCdA6GEr5h3+HCeAXM5eKheAgHp68shemgTABuspRvg=;
        b=mRHGiKwvc8VzfGuk4QD1MN6HeHL1STdVn7nUeTgcIzcT0QdALiCIzZYCsHERhKu6Xk
         q/6rCMYrSkMwiJuvES66A1tGUTyEqJh7qls9IdBOF/ddrLflNpc+B+5/4VJT44ondG/3
         b/KY3oCdPf98AcB0KZ0eW21D5vgoCwNPMZ/zzsrThwEjjMBLasdujKMeD38wc0XjjrA+
         QYDt4rO8G2cmfergOdRhOMMlCL9kNLCold5d0NemrxrszbqAnUza0oh01HW75xw7Uas0
         k6B+0P3hDOCJJsOi2N3zJpl6nElZDkB9FWT+QptVYHvZE8OlpAJ0UPbea24Udy0kh76p
         8NnA==
X-Gm-Message-State: AOJu0YxV56hWpWfasgVOzU/opACIbldA/hmyIesHTzp/IqXuNTSFCiOY
	LyXbmlR45MTaMsbipz6kp/+NCULOVCC68g==
X-Google-Smtp-Source: AGHT+IEBGi+zQC3RN8/1bQzny7fQMCHaPYmXOkPPeeh+FjnX8sdVe4HuJXxjnpwabP8MZNu79sUosg==
X-Received: by 2002:a05:6214:240a:b0:680:d153:e81d with SMTP id fv10-20020a056214240a00b00680d153e81dmr4824452qvb.13.1704506266480;
        Fri, 05 Jan 2024 17:57:46 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:5ecc:0:b0:680:c809:c0bf with SMTP id jm12-20020ad45ecc000000b00680c809c0bfls50865qvb.0.-pod-prod-00-us;
 Fri, 05 Jan 2024 17:57:45 -0800 (PST)
X-Received: by 2002:a05:6214:76c:b0:67f:40c9:8184 with SMTP id f12-20020a056214076c00b0067f40c98184mr3876880qvz.30.1704506265553;
        Fri, 05 Jan 2024 17:57:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704506265; cv=none;
        d=google.com; s=arc-20160816;
        b=c6TYEqjcRA1+a3K5KsKLU+Qf2+bk12Ycym3OJYe6PbGGp+MM70thinYrMdxhkg4DQb
         gwbC1s/4oJ7NPx0LzvPMuFxTzMpoNLX2wTIz0GD/87+rOrcaDDSz6NwH6HQ68bEKPNre
         NVzBZeruS61wS0DTkUmC23NgRfPynQB1uE9gZ2/5KwG+olIiNsskpFl6QDbCRjtJrOlk
         U7Oy/+3baOnibNKfGwtZHTti/Qa3QFYAoaeBM3ZIQCb3IodfCCrk+/rYe9MPJh/jxBFc
         3sRqLbyKmV8GL1uL63S+uuX+biG/53ugywXmSCmcvSbUG9DOnEedKfscBuW9iZloLcxq
         YlHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=2rAVixFvLTRcXpZBdQXjNQWt2TRItcfNogjZisVYWn4=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=vS1g7MLPuyMzWXQOvnumGJERDA2reUxnvznDl2LrKj3Rxcp1jdShjAr7VueA+IFxsT
         y42neiZXOngc980q6HyIv1jQArlYPh43GcaSE2fjk0Fo29OG3AiZ7lGdoMERyOCUhZ/T
         SX6PwU5wxMKrwyOY2xKoEO076qs46qugEclLse4NWoBxApryyh2fVMYYmo7/k6j4lhz0
         tCp199WQEaTHzYIISE8gqvrtmbmuOX5q6dUDvD1o+hhdV5gYtN5fGJAENQju+bJuPOQN
         MXyvJNKb0aRKyKargZjZcckvEN7opdHPcxH8K3pv4XThvK9MsNxzf2pvChWeFtURWB2J
         dpeA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id m13-20020a0cac4d000000b00680b1a549a6si3028881qvb.380.2024.01.05.17.57.45
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 17:57:45 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) client-ip=212.227.15.18;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-651-VPFRMT9QOWuM2nVuUOJTtg-1; Fri, 05 Jan 2024 20:57:43 -0500
X-MC-Unique: VPFRMT9QOWuM2nVuUOJTtg-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68AB5845DC0
	for <blinux-list@gapps.redhat.com>; Sat,  6 Jan 2024 01:57:43 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 658D2492BC8; Sat,  6 Jan 2024 01:57:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast07.extmail.prod.ext.rdu2.redhat.com [10.11.55.23])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 5EA8E492BC7
	for <blinux-list@redhat.com>; Sat,  6 Jan 2024 01:57:43 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1BFFA3C025D9
	for <blinux-list@redhat.com>; Sat,  6 Jan 2024 01:57:43 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-167-csJnQQNeONiqilR9x1Wu5A-1; Fri,
 05 Jan 2024 20:57:40 -0500
X-MC-Unique: csJnQQNeONiqilR9x1Wu5A-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MMobO-1rehhR0X36-00IhsK for
 <blinux-list@redhat.com>; Sat, 06 Jan 2024 02:52:37 +0100
Message-ID: <5ee9d566-5917-4ff2-ad89-6dfd71281c2b@gmx.it>
Date: Fri, 5 Jan 2024 20:52:35 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: dragora and upgrading fedora
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
X-Provags-ID: V03:K1:cqa0gQww9TSDwnSJ3d8FfNjt/aJ0fDPYDzpwoL0vilJAaVZeMR+
 roqayu8XX7uy56LHn0A+ApFiQ6sx8HCQTh08wSLHpP4zmJ649dQSoEFzlpnMwjIqSS4L3Gs
 iqj87W4R6e9z58OdUKE7x1s5qZDXkdmFiyBR6gOLLAEnPvqx/5PBi7iYw4U97EMn4eY8SBD
 HjQfy77tLfaM4XlxIUeJw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:bMETWVBrB2w=;woFFUSI9h0q9cYJDrMHmKp/qf3X
 PKr7EqFem+/4B0Xwz0q73ZdQGqyVg/TrWskbGe5QWoz6njdE8plGAIX3bHJTHw3EW8UmqUQl0
 Wk3OQtPYrNYIaCNpdgSQHutdAMYSwuxpy20VPBEmcknZJpn6oQ+jvF2eBoaAHs7wfl9gNXMZL
 rd8MW+dFsMqNGAG+vFm5xqjr42yFvmIs7vq+Fm+IEbGTpH9eDN10Zo/sc/1AzkfXmVunrOKbf
 BkEvj+RrYCaeqd+2CTP+EjkovIjqW8QYGs1/Xp/DNTdMJbvr0uxXVmSV1p2sGI2heDT92QBuW
 Y54nF9arMreS84JyEroLqfFm3d1jQCLaF5BKV+ELcMj5dTFSXGvwy7IPzi96fw25O+fG3/+1u
 1BKdgo+fue6cfz1XgFDK7euTZgCJnc8lw0uNg5Np2Raih4Ibv6G6OzZU1DbNao7So+qXIY7NK
 wBRnnYT5lPXm43nNGMto0jhGFc/3M9G60eKxPivdhqWOVEQ4VsNP4GUWo+4cHZwoXB/y/jpYr
 Aq8CRBrWC8Ur2mItXaxQju6wMpYKcislK9jl0jIUxdGn06lUvKK5dR42uAUHXrsFe61L3nenV
 nQ/dSTXlg14qSvo4i53ZasuyMTAzOJFqdoiDQZqa/ssuVBU4PhZ1LbJwkeiIbjhKfTS6e1K8J
 tWIAyqHAJljJjEdqJiN77CtXtEM2IRKEa8PUbzhPtiCEifSSBAKqsalE+6RG4M0F2KcQnl+Pw
 qLVziTfF5xR4w2cBT0zRKq7oYHgwnjhnus24OtKeDkhRVS9UJsuw2bxuHIwrCL66IUIx6JcVF
 q5Fht18IQZRHuFRbR8huhqtHk3U3a1lUVObG1htbW0ATO91BM8oxejgBNnJ2LH+02Cy1HOcUE
 N9qFdB0hnQgv4EFaWMMkBaPYQcuYVROweGagxnsGpoUb7nUzEf5ICuPxsd6qgqFQAsOkd4Bz1
 SlDcbHchiJagD6aPMRDR3ZN0plQ=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.15.18 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

I use it dnf here. I use the documentation found at

https://docs.fedoraproject.org/en-US/quick-docs/upgrading-fedora-offline/

This seems to work every time, though when I upgraded from 38 to 39, I
had to add the --allowerasing option at the end of the command line as
indicated in this document if something breaks. Hope it helps.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

