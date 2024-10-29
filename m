Return-Path: <blinux-list+bncBDM5DGHN5MHRBZFDQW4QMGQEZN52E2I@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 540739B54F5
	for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 22:21:42 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-460ba83c83fsf109396531cf.2
        for <lists+blinux-list@lfdr.de>; Tue, 29 Oct 2024 14:21:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1730236901; cv=pass;
        d=google.com; s=arc-20240605;
        b=h2iyRKgq0OV9QArrjrhW/n2DqSBjFH7Dj76DnLpOnZ8PKYnWbcO5s2wRKBtTMyNP2U
         d5OkoB7kh0kEz7BSM8y3RGpXH7vDM+KJuQJWIQZncuycVrJUplNcZUpYKj/qUsdear0B
         sV0lkMnVscAoFZLaT6YW4HBGIEzvA7ioOr1+cuPJU0+4IdL1et8pyg1rEgqOMMMSqh3b
         s023gFvZx3O/im8dWKESHLYzRjzwHssvThXzThEvC+MQur2RnnFxdoI1Zc8xoflzSwco
         xPpCkfgq5d6qsANT5cRjt7atahxGmcHHzDEKR5YMEF5pqQnpo6B4O5K44T4bOI00YIEN
         dbpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=yvHUQlJM5F6+2nSpTozWWCyVi0Y1WBVhW56iIPTUcAc=;
        fh=ddVeBFtobo69nzwC282ztYjrVouOS4p+5lHyRx6v0b0=;
        b=iIehP7dCwqfBxy04t+jW0J2C470VITTs+7mIKoR7i/9kg+F9N6W8HFSkPq6X64vZms
         /dqFc3uEuxwIhchwIUQ2BqR6KiqGmny9Ennk28mfZ6BDg5tJktFGIKBdla26/Ipa4nTC
         08piS9p2Bq4ILLJpncL2CFvZzcv+s3xShzmd7YPWLr2joVYtSbT/z3uTvBJqWCygUPpR
         PH2uMZrGVzL2+oOBP+ti3JxV6rJG4LMSAP38ITAHQ94omRYKTDDwXwmsYV9ZD3jHaUrR
         PEV8qi138VfJTFn+7zyalTnftzlyE81RzTftlFV5gH0E9556PP0pkQqiJQhOY5uheyAp
         XLCw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.169 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730236901; x=1730841701;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yvHUQlJM5F6+2nSpTozWWCyVi0Y1WBVhW56iIPTUcAc=;
        b=fpN6zM/ib8At5m00v5U7vX+cyUxhI/gCgXqo2PGH9myzwPTjffwgoi01A/0IOIsSVj
         ht8McRS+GztlaS0VayFsCM8eBmXH1o4TN6Q+yGNk4I5idgd4hsneU2dIBjeQXsYWMxY9
         u2r1nxpsuEofb+ptxdoPsfdk7ZK/AR1AwVNPl2p6N2WgJcRx50rSP4bCCe/ryWFN0L0h
         JgGOFufq8IbxrACa4Fsx8GfIT+nVRAqYS4peQMf5Poeq6dgGvY309TvoeTOcQIeTUHDF
         WQVeJxiwrcdFeEmsPHkGILVZAm9fWd//8MyRACG7iA1LKRm93AJiiRbhDg6fJjyXXqqh
         1NCw==
X-Forwarded-Encrypted: i=2; AJvYcCXakSk5DT/grk1QzXEKfnUC2S76rF/PaaqoosX4wVnPEntEgGcys/geitCv0jUxqicaBNmuSA==@lfdr.de
X-Gm-Message-State: AOJu0Yzpv0VOAw4UMtuUHLOgNE38BNDfdP3jlo+YERPNu/wKHh3h6AHz
	01agqvqRLAen14x1Y0NU1CeABGLcTKxK6EPU1Sm4xQxx6eWKC1PK4ocibd1Ptak=
X-Google-Smtp-Source: AGHT+IGJOIZhGuQpkES1SqOqGVuTW6cYMOLcOQewXP8YG3imzwyAz4XkpMBMXkDKBcR3Em/fGRj2cQ==
X-Received: by 2002:ac8:7f4f:0:b0:461:6ef1:7a61 with SMTP id d75a77b69052e-4616ef17b0emr28208011cf.9.1730236900716;
        Tue, 29 Oct 2024 14:21:40 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:256:b0:460:89b7:cac0 with SMTP id
 d75a77b69052e-46122d0da02ls74300691cf.1.-pod-prod-06-us; Tue, 29 Oct 2024
 14:21:39 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXJqmZinlnp0/+okJaqlUrcTIS590X0iqtmpeKWh8Gnxn7wujHHO3Bbd9I8g2xl/r1deHjfIkJPSC1Ocw==@gapps.redhat.com
X-Received: by 2002:ac8:5742:0:b0:460:a825:636c with SMTP id d75a77b69052e-4613bff0d99mr233151251cf.14.1730236899637;
        Tue, 29 Oct 2024 14:21:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1730236899; cv=none;
        d=google.com; s=arc-20240605;
        b=BdPmkwHlwnoBZFtiNw9KC2lTLgyYn2kcP5L2PtgapvKB0w/0kFWVd/i8YTXyqxvN7A
         L6J8hknLoGCmJ5UFbBZ0wW2AetLEZS70c0ymDXW1BGnDozDgCP8g+8qZcRv9OnnHLDyh
         QYAbUjQS6wy/OnMhHYl0mT4vjO2iVzGEcUEKz/0NEttQYasR2u7q5SjYvOulAYmdp52h
         RtDsDSq5lrKGyEkl3Xv8sejiUZWvQislv8VbhF16cHByDUrFWYK6FlK4SV0CUJ1/s5+o
         7Nxd7NdvEeZF/3rlrNkpf0ANDCP1yrGwH3No/OwoVaXWynQJhc+OKhs3Br65Cqfu/Vlt
         Wjtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=SInMncXwxChC8sSzxxdF+TUcO2xdRsvR59VFWRz2S2M=;
        fh=drAW9jt+Ot89nTL48K8VLUQCrjj5ri7U60jzxpcWTt8=;
        b=ascJxGwhMjn685nVVE4av+7oDoH+Z4N2lmFaB1ugLB2JW3ES3EF5HqzrVhFkE9bZmT
         eNneennyQ+rqxFm2lLmGvrlsMRurVfurzg+pyq2yxgQ9rukMb5MIvcpKk6nAYiuCmTO3
         rV9GVNDyGdGCtHZ4OPuNfqdhxj5jgiRorIm3yEmq1WuBM/j2Rnn8Evnb8I0/nW+NaoQe
         9+dm9mSojVfSSfaGkIGgj+AREGkhCmhYiX8qgM/33II42xo/Jdy5d0e2VYBDeGfeXbGS
         K1PR+Tr3Qm9qs+zIWdOrvpDcYqPvEmRxaf6XhKqlh9eh9hy+7S1yiJRNuUEJX+HL1aHN
         eL/w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.169 as permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-4613235a7a4si111971281cf.241.2024.10.29.14.21.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Oct 2024 14:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilovecountrymusic483@gmail.com designates 209.85.222.169 as permitted sender) client-ip=209.85.222.169;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-271-SczpzJi6PCKMObuCEZRriA-1; Tue,
 29 Oct 2024 17:21:38 -0400
X-MC-Unique: SczpzJi6PCKMObuCEZRriA-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B174419560A2
	for <blinux-list@gapps.redhat.com>; Tue, 29 Oct 2024 21:21:37 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id ACDA61955F40; Tue, 29 Oct 2024 21:21:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A9BC81956052
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 21:21:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 29A1619560A2
	for <blinux-list@redhat.com>; Tue, 29 Oct 2024 21:21:37 +0000 (UTC)
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
 [209.85.222.169]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-573-IOy1HGNSMoSifSkziakMjQ-1; Tue, 29 Oct 2024 17:21:35 -0400
X-MC-Unique: IOy1HGNSMoSifSkziakMjQ-1
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b15416303aso451132885a.1
        for <blinux-list@redhat.com>; Tue, 29 Oct 2024 14:21:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUd+EnaUI7v1Ed98MhnypNxDIbJhI5lJtJYiE2+l4OLnEPB8+WfahE/uRRD3sx3ErGXXIqMcYOShX+lTA==@redhat.com
X-Received: by 2002:a05:620a:2545:b0:7b1:50ba:76ec with SMTP id af79cd13be357-7b193f40096mr1974265185a.52.1730236894524;
        Tue, 29 Oct 2024 14:21:34 -0700 (PDT)
Received: from ?IPV6:2603:6011:ba01:8300:c1bb:7806:6c31:684c? ([2603:6011:ba01:8300:c1bb:7806:6c31:684c])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b18d334077sm454080285a.92.2024.10.29.14.21.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2024 14:21:34 -0700 (PDT)
Message-ID: <e5e4a446-56f6-40b9-af89-30b46e6ea92b@gmail.com>
Date: Tue, 29 Oct 2024 17:21:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Accessibility of Calamares with speech and Braille across
 distributions?
To: Didier Spaier <didier@slint.fr>, orca-list <orca-list@gnome.org>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
From: Matthew Dyer <ilovecountrymusic483@gmail.com>
In-Reply-To: <f83f8b32-a306-4802-adb2-66d3e6ca06e4@slint.fr>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ilovecountrymusic483@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ilovecountrymusic483@gmail.com designates 209.85.222.169 as
 permitted sender) smtp.mailfrom=ilovecountrymusic483@gmail.com
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

Hi,


Wile I donn't use braille full time, I can tell you that debian testing=20
is using calemaries and orca reads the install with no problems if you=20
want a basic install.=C2=A0 I am not sure about other distros like manjaro =
as=20
the last time i tried it orca was not included=C2=A0 in the live images.=C2=
=A0 HTH=20
some.


Matthew



On 10/29/24 2:22 PM, 'Didier Spaier' via blinux-list@redhat.com wrote:
> Hi,
>
> I consider including the Calamares installer instead of the current one f=
or the
> distribution I maintain.
>
> I assume that its accessibility with speech and braille using Orca and br=
lapi
> depends on its configuration, hence my question: what are the distributio=
ns
> providing the most accessible Calamares?
>
> Cheers,
> Didier
>
>
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

