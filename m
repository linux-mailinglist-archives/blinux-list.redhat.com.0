Return-Path: <blinux-list+bncBCLPHQH4XEIRBN53QOWAMGQEOT6R4AY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A76A817E58
	for <lists+blinux-list@lfdr.de>; Tue, 19 Dec 2023 01:03:05 +0100 (CET)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-591202b7fa3sf3501502eaf.0
        for <lists+blinux-list@lfdr.de>; Mon, 18 Dec 2023 16:03:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702944184; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVWZCxthl8avEVlbWU7921W4mcHiqqgBq229KJgLYlPBO4XYJIRNxo4NWQaLSXril9
         9ye548aC4lXpfnmNFX7Q/n3mMXtyna1U7Z6Fsha89I3hzYhhhmK849RFb4c5ozz0pf4u
         ZeWfDvnTxzy0eXm5GvO2xl4aNvEFXc0uE4rU9a38IIJbdo5pFgXY0jhr8gtX6xYmlt9K
         pEo4eY4IFHWzv87yXzlADfVgMnAhuonb0xRybxaU5At9gIGEXDzFB990JEJ8xSMAEXFd
         1F57Pl3CVWa4G82tNn12OH6pK1bHN83rEtJM7gejnZC8sQJeTTkoODGhwrnNGPYLdJfe
         JMYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-language:in-reply-to
         :autocrypt:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=yKj9LgqI4JTVmImMhnchH3pSxa1QrORmpiJCErrU8Xk=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=eXa/LwfMS0QdHKncy9U8qx1SjbJFUkdmmiUk0UgYgcn35aWqJnSzn0qvO2R7dXzEI7
         piclofAWZB85fLjZUxCWYunqW8+dxQ0y9z1sBBOzJet2LHbN8sZpw7ow5XfIvWecwbT+
         Fq8EA8QT6zNo3Lb68TMs8um9Zag/GME6W17wq9e2mn34QjSAqd2V1on2cS5LIaTh62A8
         Owz5eT4Rc+b7Oaa47QeU8q7StkQ/zJxHodAyLHd6RCPnv9be/iHgojfgrHIiV32cUpqS
         PNdelsE+8eAIWUcjtbNsCaM/lwoI8J5WC9REVjl3BjKLthkQafTLKTeDvs+KHQOOqTCL
         Rz2A==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702944184; x=1703548984;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:autocrypt:from:references:to:subject
         :user-agent:mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yKj9LgqI4JTVmImMhnchH3pSxa1QrORmpiJCErrU8Xk=;
        b=OmOihms/FFnE6on5yzRZ5w5dZuiQkXTHNT31+EXxX9Ld4XRgVOd4GrFQLupigG4JT3
         aNC7p3Cd6t/W5pQpWat6zrWzs6Wl8npn78Lnpt+ym4qkfE36bRNx1u0Nwbk9ZbMk7k4i
         F8YLDMtAqhY99LTmvHWAclhgOn4mU16FpQ6aQAkbTV2UDrSl9STOPhf543EwNJrYUNIA
         IuNiJZrmi739IC8Rmbgr9W/C3CXyMtsqJ9FffmwY0pUhCKXXMJXNiZRb42n24wKf1Ahn
         m5LvxxSQfx/4FVTzbGRFFGiRAP/OOSsV4j7P2BoyYFp4usxkjfAk4wn1CZ8URcQT4+YV
         Zslg==
X-Gm-Message-State: AOJu0YwEoHWUXfCo7Zin9p01iif8dE7K6piOGlP6egE5d7K6qLA2Q8H2
	zRdDq65LAjDP4GM/pf/07WttTA==
X-Google-Smtp-Source: AGHT+IG+nUtqnJ6a6ErXH/myYMkdYFSTSsPj7N3druMk545pSWQz0m1d1ApJEUdBYQnrhZGPs2GLRQ==
X-Received: by 2002:a4a:ab43:0:b0:591:cb4f:a672 with SMTP id j3-20020a4aab43000000b00591cb4fa672mr1794043oon.9.1702944184057;
        Mon, 18 Dec 2023 16:03:04 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6820:1686:b0:58d:9776:771 with SMTP id
 bc6-20020a056820168600b0058d97760771ls3687337oob.2.-pod-prod-02-us; Mon, 18
 Dec 2023 16:03:03 -0800 (PST)
X-Received: by 2002:a05:6808:f09:b0:3b8:9dec:1b7f with SMTP id m9-20020a0568080f0900b003b89dec1b7fmr17874907oiw.5.1702944183100;
        Mon, 18 Dec 2023 16:03:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702944183; cv=none;
        d=google.com; s=arc-20160816;
        b=B9gd9Dq9l9wE2SZEvbl63LbJmkYG8CQzvwo1osxhzFHMK5pqitEZvvWM0IWmCfDVc/
         w3At8KBT6j2T1UoM5eduCYvgPiyvx5iqXmRYPzFFtsN+mTKhaY5JuX3FRqG2onScOo2B
         bL7MxQDGP/HylOhCrT/9VoEYriOf1/dJUdyxQ7N0s+Pm3IoNxEEElgaIKNLfES7zRsq2
         3QUM20RmmYoWj9aorJEKJeTALDO14bswc4zcDk88tey5TXMTpT1f1773HR6SCmhZo2g5
         ck29fpTWrnj7mjAu2qLLTCtSWyY/2piUGdc9d+zesqgoHFv1iS4EZZUqFgBgAhumx1K8
         NTTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:autocrypt
         :from:references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=FVVrspcHSaBTBrGOMhjcTjn0NP/9hguc9oXVuhQgUj0=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Doa2/puI6cgb2GAelTnsQMez0hyF6ow9lBCjPwOlgz44Mw2CsiSYjymr0E0zhNZtMM
         YoRqB09PRi2Fy2DgzW3zByZ4oTP9inwxThH01egK57cPpmn0MfvWZQURcRNfIw9pyJLn
         u48PNnv0v/yQYur6i9s2K3+7noBmBLpKBic/+ynjH7Tgu5wO5T9uuYL+ITOKpzBsdThQ
         vbtsa8igd83sJ6uecP0qcjYlwQwFR243HJVKCMd0ehl+DBAwxqPhmv8YvOhXchGck51s
         Z8RdRuBHvfS49fgD9uFzVYNxJRzBJTyRvIJr3FPAFESeV7Zzbg+n/Ucqry5xGPTVbfSb
         j7ig==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id be12-20020a0561023bec00b004648f2fc5c7si527708vsb.137.2023.12.18.16.03.02
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 16:03:03 -0800 (PST)
Received-SPF: pass (google.com: domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) client-ip=192.155.90.172;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-582-Wca7s6eeNhi_1p9UhQaZ6w-1; Mon,
 18 Dec 2023 19:03:01 -0500
X-MC-Unique: Wca7s6eeNhi_1p9UhQaZ6w-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7FF321C05199
	for <blinux-list@gapps.redhat.com>; Tue, 19 Dec 2023 00:03:01 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 7CF6A112131D; Tue, 19 Dec 2023 00:03:01 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 74FE71121313
	for <blinux-list@redhat.com>; Tue, 19 Dec 2023 00:03:01 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 507B8833944
	for <blinux-list@redhat.com>; Tue, 19 Dec 2023 00:03:01 +0000 (UTC)
Received: from svr.jasonjgw.net (svr.jasonjgw.net [192.155.90.172]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-452-6mkek1xiPr6KA_kkTRTM3A-1; Mon,
 18 Dec 2023 19:02:57 -0500
X-MC-Unique: 6mkek1xiPr6KA_kkTRTM3A-1
Received: from [10.0.2.1] (jpw.jasonjgw.net [10.0.2.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(Client did not present a certificate)
	by svr.jasonjgw.net (Postfix) with ESMTPSA id A30F9320E9
	for <blinux-list@redhat.com>; Tue, 19 Dec 2023 00:02:56 +0000 (UTC)
Message-ID: <ea34efdb-e86c-439b-bd98-3d569a076cde@jasonjgw.net>
Date: Mon, 18 Dec 2023 19:02:56 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [orca] Screen Reader User Survey #10 on webaim.org has Orca
 included
To: blinux-list@redhat.com
References: <B4385BD1-CA93-4639-86B3-F5AE3B97FB04@schoeppi.net>
 <389d1e4d-399f-49cf-9d93-2fe109c06c92@gmx.it>
From: "'Jason J.G. White' via blinux-list@redhat.com" <blinux-list@redhat.com>
Autocrypt: addr=jason@jasonjgw.net; keydata=
 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
 Jlx6Ar305Q==
In-Reply-To: <389d1e4d-399f-49cf-9d93-2fe109c06c92@gmx.it>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.3
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: jasonjgw.net
Content-Language: en-US, en-AU-large, en-US-large
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: jason@jasonjgw.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jason@jasonjgw.net designates 192.155.90.172 as permitted sender) smtp.mailfrom=jason@jasonjgw.net
X-Original-From: "Jason J.G. White" <jason@jasonjgw.net>
Reply-To: "Jason J.G. White" <jason@jasonjgw.net>
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


On 18/12/23 08:32, 'Kyle' via blinux-list@redhat.com wrote:
> It's about time! You are indeed correct that Orca was never listed as a
> screen reader in this survey. Finally, the survey is worth completing,
> as it lists the only computer screen reader I use, which is no longer
> relegated to the "other, please specify" answer choice.

I agree that's an improvement on the part of the survey designers. 
Unfortunately, based on what I've read online, there is still a strong 
Microsoft Windows obsession among many screen reader users, more so than 
for the general population, it seems.

However, I think Windows is in a decades-long decline, largely, so far, 
to the benefit of Apple and Google. Linux remains a very good option for 
the technically proficient users whom it has always served. If it is 
well packaged and the system administration is out-sourced to someone 
else, it can work well for the nontechnical end users too. ChromeVox is 
the most obvious example.

I think it's important for Web accessibility specialists and application 
developers to know that Linux screen reader users are here, and that our 
needs matter.

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

