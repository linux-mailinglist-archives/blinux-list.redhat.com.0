Return-Path: <blinux-list+bncBCV3N6GOXMCRBHUWQGWAMGQEYWEVMHI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B15817096
	for <lists+blinux-list@lfdr.de>; Mon, 18 Dec 2023 14:37:36 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-67f3d90abfdsf19249526d6.2
        for <lists+blinux-list@lfdr.de>; Mon, 18 Dec 2023 05:37:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702906655; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fktw5/FEnDjsxN3v7ZhtqrBiYgenB0XhK7m29XF6MasTDr+WMEJxcfo7zozZtTTYJY
         kMxQBfxPIo/+4wouz2Lt3xVd3NxFZu4qgUKWc5SevlyBvaXJ2FFaLO33B7v4NvxJ75Dw
         ub7VTxGIh+lYltYs3KOaZQh5hzgCCHqfc22o+M1/qOipcyKp7kmpLw1rR4oTTrA3IEDW
         TTCg91EIOk1JJwQnrCdD5HH2DRUYNilfOEvQ0yqSdpnAt7RAuvzO46kE64XgTkPeVaft
         ojraY2bfMTcfr1kVtD88D0iazd+H0ZChxjFNgYhsCEmN15zsdUtT/mx5mjkM1pVHMc6N
         0HkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=0GYn0wrEETrejljMwjnAiy6ViabNUJAqa+t0VvkYasY=;
        fh=/Hqa1QDCz9WfdJp0XP/6foIRI76WVLUeK0YtmyEiowo=;
        b=MuSZvcLusLIJTyM+LUjeGaEUyBB0FKhVfAeELbI941cjt1ry4xDzp1x7bRihY51j7A
         KQREWn4A2Rwe+PJ7hh7gs01EPEGVbTKfrpZ5nNrHjKRNGhdjyy8AeL2lx5nUx/QZ184j
         22oxlfAYc2iFtjr7MMe0QpOz0rFVPU+z7Ol/pRpaO5tZ1f5TS5VeRbzYe5rYI08KheVp
         WtXbjR4NXuQFgzaxxAUhzQXI8+7/BQppXM2J7DxGWBMGMXmFh+xGTg6TmxwUlM/OUT1/
         zwKAen9E+bmu0uTpKUpO/epmeZFun6pS/wIAMW+HMHXY+mVVjiQ+sxdZL/gSJ/CutP9D
         ufog==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702906655; x=1703511455;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:ui-outboundreport:in-reply-to:from:references:to
         :subject:user-agent:mime-version:date:message-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GYn0wrEETrejljMwjnAiy6ViabNUJAqa+t0VvkYasY=;
        b=pEkY+iUdH1cOqNuvlKOLwdQlTy3GGQPHw6GoLNcgPpbrFRtVdsCyaYNqkDjUIwEbUQ
         h3+B0hQnBYQ0ZWEPJeuzHr4xGJIIZUpOsTP77l8nCuqlJE4mX6tQzRFBH+O9Duj49YVy
         FRADJpWkEXhamE/Twra6qcfQxYrB4hgxt2nG/Z6yrTOxaGs3egmPkk4tPsZMLOQw/7mj
         s+mxXHgrw53DzlVuAr7r9tqot2Ap2JQ9fM6KZHGvfIIULfWwXnOP6/N85wSBLHZ5sZeZ
         puSZAcbleIsHpkEN3TZ4NNEYxCh4pJ6NFPUhKfvwfSTPqXZ7PkV4KZEWViAF5TtT0ldr
         vRJw==
X-Gm-Message-State: AOJu0YybliyteuZo6ZzGxnd/PrP43sP2z7eCg0HbMntLzppT7lPWoquH
	/abnB0YmPxDAJH+cUY0w/qLHZA==
X-Google-Smtp-Source: AGHT+IGt9mmUDRULzf1/1dszKlOOoKhKoo9nHHve4FVam92W0sWs/G/PZh/ReUYUrA6nEa77XNmVeQ==
X-Received: by 2002:a05:6214:765:b0:67f:3d91:cfcc with SMTP id f5-20020a056214076500b0067f3d91cfccmr2803560qvz.15.1702906654996;
        Mon, 18 Dec 2023 05:37:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:3019:b0:67a:1a58:78fc with SMTP id
 ke25-20020a056214301900b0067a1a5878fcls1841675qvb.1.-pod-prod-07-us; Mon, 18
 Dec 2023 05:37:34 -0800 (PST)
X-Received: by 2002:a05:6214:da2:b0:67f:30d4:44cb with SMTP id h2-20020a0562140da200b0067f30d444cbmr5306157qvh.8.1702906654011;
        Mon, 18 Dec 2023 05:37:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702906653; cv=none;
        d=google.com; s=arc-20160816;
        b=pFy+gdXSYym0r4XGYtOAifPw/nqVN19VAHzuIwhr+UMYdXgG2jaU7Fi1FhC7+CDbj2
         Z9QqOaUzDAVWTvP0D+dXNL3Rv5fOzJj05i970zhwgEGWoCdta1pK6pWCOuHHd+12U7v2
         QBoqW/Jibt6eGP3V51EmT6nCSY6tyFtxWcQzvCH1TcIyULOGmb7zzacrnzvRcX77bOZl
         PxS/Ait6M62u6lPwBVHCYMcYKzjjaVicyBFMRqgeHrNhIpiwtPJit6C3Q0Sd58wM/X4O
         rJM/kGTbr3S5n3QR4Y3Tzu5HkiuejSJEf3N4n8L0b4kFkk8+Zfdv6hAbsQwccbtzuCLP
         5eZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=tCHJxjg3ReVmU5u0rJJmACMYADN9/VxsRrm4g/z46lU=;
        fh=/Hqa1QDCz9WfdJp0XP/6foIRI76WVLUeK0YtmyEiowo=;
        b=JMnppfAhexhopFPJ+2TiWVTIX30eKSO2FP8iLGut472ryTykfR1jlvLoEcg2pLceyu
         ggVePBWLCcYI3le5kxPKOj/TLIhJBpstSMkrKiLmHG6SHFVu/1X7/qA+1jIckB2x5E/6
         MjQvUMRJ43sUGkrzJJY9JXHbnFIkrI43is4Rx093ytqhz0muUJa/MRJaD3rzS7WQIApT
         RP4dUe0eKbViSSWvQxzQDJTc3S68BanjabZ6cmEf40qPTOf23g5HS0iw1zftW7gC40wn
         TyM6wPijW1YTbqCg/Zb5aK9336C/FzZqJRC0XOEyWElCevp9UsMb375lQVP7xDIbXPCW
         pdRw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id i5-20020a0cf105000000b0067f29f2374fsi5161457qvl.402.2023.12.18.05.37.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 05:37:33 -0800 (PST)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) client-ip=212.227.17.20;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-277-NHzUxP3FPQ66k0K92S6Krw-1; Mon, 18 Dec 2023 08:37:32 -0500
X-MC-Unique: NHzUxP3FPQ66k0K92S6Krw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8B3FD830F32
	for <blinux-list@gapps.redhat.com>; Mon, 18 Dec 2023 13:37:32 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 8873851E3; Mon, 18 Dec 2023 13:37:32 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 81B2651D5
	for <blinux-list@redhat.com>; Mon, 18 Dec 2023 13:37:32 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4B31A3813F25
	for <blinux-list@redhat.com>; Mon, 18 Dec 2023 13:37:32 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-695-B2F6bZGBMnC8rWxBD09b9w-1; Mon,
 18 Dec 2023 08:37:30 -0500
X-MC-Unique: B2F6bZGBMnC8rWxBD09b9w-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [10.0.0.20] ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1MWzfl-1rmSxq0thp-00XLNV; Mon, 18
 Dec 2023 14:32:23 +0100
Message-ID: <389d1e4d-399f-49cf-9d93-2fe109c06c92@gmx.it>
Date: Mon, 18 Dec 2023 08:32:21 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Screen Reader User Survey #10 on webaim.org has Orca
 included
To: orca@freelists.org, blinux-list@redhat.com
References: <B4385BD1-CA93-4639-86B3-F5AE3B97FB04@schoeppi.net>
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
In-Reply-To: <B4385BD1-CA93-4639-86B3-F5AE3B97FB04@schoeppi.net>
X-Provags-ID: V03:K1:ektH8K3CK9jpUNKycG38hxnV6Dj2yUPhBn+oc3shNRZqNkJAvn7
 wXrzHi7cjyyhSayXhKqrYrOGzOmjhecxjT3xx8he3qOvkPr8+z+qjNTfSnf5YDqrjBAHdaG
 Crpw71IYAcrCM4DrgL1h1pKkosRHWOmG4ASUBnC+/3/kZswd/HW8Xz1adtkH+JqFjX+q+nn
 JKoF4eITBzBwLAbtwBisQ==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:xpgFfyW4glo=;QMQzY14xdH/ZdoATqIwhehG1EWf
 Z2njhPO4RRFucmG3RHhuctBzh7G6nqNAaTTXSrhrCbnXuUBBzekFZAdWdQufkCu+Q+24vDcCV
 JHPyXPGI/5bceJvhGHbmpYtlAOEDcrXa9URel+NZcQtxZJFIRfNz4GkBAIjF10exqH/k9dwWb
 PG/7fb8DJm+eR411kONZmT1rZFvkmvsBgl/T8LVdRl90g4Xfm2IsYZx4sSs4Ld083Jhn2afp6
 ObYC40RCwDE0IYmlUk5aGuUC8MuKY7LzZAlf8icAM2YZTuhejFkYjhpw0MRXOm9hwuiOW4qvC
 vQ/zJVA7bjG7YqZqXBl7XyBPzh/aCU7WfY0lLsLVzWDNRb6cB4EVQUKQ5IFSHusQ/bdc9QhlZ
 EDiSApuPi7F9CrYWR7Yo2WB1U8zlE91qhfH1k8u02r+RZX2z2M3NCU2VcKa3ROM2SjfLGWkWY
 7AH0qYeUdSq6y11VN5hfL7iemWXYG9V0ELkFlKfEh1OSaBGE1C6rZh4DH72YMVC2IIUQEeCq1
 qxjQpZ4W5gsb2xbjp2yKa72lKdS3lxrHAWRRZy/R9X9WqIUsz+7AbFrn6SPBlcHIKLjVBI/PH
 A8hFNacm5hDEJ3idXyjeLE0c4lSWT7DBuysOq5vLp6iAL+TcJZsm4WK7AN7qAPjldX9xwNGCT
 vWXjlOZWEGFkq6eOOYvb77xdMxT3EDHUS2MgwoQ7iE/Lurl/F+nNDD+WY2pZ9B1HeImkj/pzO
 ZwhERDk/oYAzbN34bDJ+rcz2ND+hVUCiijxfotmvKHQ4Y2szQOuHHdc+hR8bWCa+/0CddPoPE
 2EigOz3akkqFj+zmrdDuTEGpkDa/P5BxZVO/PK6cT1UCpaqhkrg2vz5f56ur8CtIJ27kpyYrU
 nKdxWlaULlit/NTFkjh0mwzhz0zG7HoBAV8RTgyypmiB2Ukk9DZbTqvoFBjKQLeBNBhBR03LA
 rQ/8Sk77RVxPhG0sA+7o2AyQJA8=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.20 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

It's about time! You are indeed correct that Orca was never listed as a
screen reader in this survey. Finally, the survey is worth completing,
as it lists the only computer screen reader I use, which is no longer
relegated to the "other, please specify" answer choice.

~Kyle

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

