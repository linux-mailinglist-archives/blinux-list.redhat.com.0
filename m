Return-Path: <blinux-list+bncBCNLZ3P6ZIDRBO7ZRGYAMGQEXOJEOCI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C11F788BB8D
	for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 08:43:56 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-430a6fe58bfsf66436741cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 26 Mar 2024 00:43:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711439036; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZLd49JU2vAvSMigiSe4HGVzeN6l96HhRCLERKqdflMZ6V0NrdczgnNjx9yIC0KLTR
         1Nn0pLNfZjo4iavJHB7na7KvKhKv3UTjRGLMbzAnsNybFr3QQSHKmoh72+uq4LzRw5SE
         zYfTe27aVZee1lEX64EDNPHfhLphkHLDqYqJNdm7XQB96gGaQyo9yzMU/ee06Fv0KbRq
         Hy0aixaKBqo1ifgtjCUj6220YZgad7PbettyG5YMVebHv5beeVLqc/Hk4wCy9/iOEG8J
         v0X3PJGp/KwiSTvDPlXsZziytHHehORtp2zgMC91abWTvGjZ6PAQ67Z/MB2pxCI7xfk7
         ztJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=MDjr+y2LKojYytl4ibz6kowXAfqiKgkzcribWkzpJok=;
        fh=Rcyu6wgKvEsJ9ZB3H9AiK+Oggxq5RhiOr3Zx7Z1sA2U=;
        b=sckPdpw/HkF02FAE80xtD9iQpI+6k/zWk53c8/LvVRwLjkI8f8FPqSawXvAkk5Kzu6
         nDhggwOwMUcwvyUSMLockYGoj+dtjErhRr5vh/33pNz3DGqXtXJXVNMxS4ps54E+gpAF
         Q4BHgS6DqYP7VTeoerAPfMzuwiPV+SQ7xKwbi4OQvMCGoFjfgMrEoViLdQe2mIUpGvsQ
         3EhRVTAyxftIeqTK+jUFD2OAiuH1+Mczx1VoFdc/ttRsN+G8EXCehlrd06p0dRUT/w1h
         3mhsCT+T9ld1Yovcn9bvDrs/rDDpDmvRXnudx4ur7HUCtfyt2dQPQsH45S/dxSJFC/+J
         biZA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711439035; x=1712043835;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDjr+y2LKojYytl4ibz6kowXAfqiKgkzcribWkzpJok=;
        b=G5ECERXKbGmSLviD8QKJGLarsW57fHfGBAuUJ44s8FnueHXTKbw2QVkSehk72V9z3y
         kqwKPR1bKCBkJ+oriwcF3LbXOlGJavP5Kg2phyWt5OzaF7EDaALJsNqYIuC+ZlhVx+By
         xOHKjF7FKPRm0Sv69BjSbOo4Bb5e/sc62xCiZJwHBMP5GdsR1SoSCor/z2k5tm2Q/OCi
         VW8i0v51ue7mFocF51vj42rrsGb4feI95INmODOHRk+X5poRNFtpOXkGjccjW4TKGV/K
         hlxwDfZeSABWuuXi9WPjFVImo9CWayd4gq8EkpLUCBgTbNyKOfMyR0rl0w1xtbEEuLQa
         UAig==
X-Forwarded-Encrypted: i=2; AJvYcCVNy9ITBtsBNtBSXkYmUB4AzpUcbq9bo49+BeaK7fxRGndt6i7WYpVA/ZXOXJAqZ/Lp0yteuL0Jc4Ba+uKVnrJNgHKcxpZA+zI1
X-Gm-Message-State: AOJu0Yzn2FOJwPBFTjxFt73s3vn8pkAxMhCDyTbJPda8w1Va06WpZ2gB
	yQbpPdJdsK93/k2uX9vuiJKbJOyNT48jZrigLBFnXMvby8xULtI+Q6a8uKAtN0c=
X-Google-Smtp-Source: AGHT+IHhac88OpPRGohAcOrjmDpQ3toiKeE0LCMUfy5+ZdWr28F9A+ksVTED/6Reem3c+Fs/kB9VfA==
X-Received: by 2002:a05:622a:cf:b0:431:3fee:9d53 with SMTP id p15-20020a05622a00cf00b004313fee9d53mr10057513qtw.24.1711439035606;
        Tue, 26 Mar 2024 00:43:55 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:cc:b0:431:508e:27ed with SMTP id
 p12-20020a05622a00cc00b00431508e27edls3136062qtw.0.-pod-prod-05-us; Tue, 26
 Mar 2024 00:43:55 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU7Lia1YXCcgsqOChuQRUKfFU6z4oHvAYaTlXvbSiqoEADD/7vKNPZfwe6paOSxHeob2LqSeilMV7TI2tfIdyEjieDMUQGd6wpvYXTS
X-Received: by 2002:a05:622a:91:b0:431:2875:71c8 with SMTP id o17-20020a05622a009100b00431287571c8mr11444112qtw.18.1711439035020;
        Tue, 26 Mar 2024 00:43:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711439035; cv=none;
        d=google.com; s=arc-20160816;
        b=DBiJ0RDX64Jtc16+7rMBjoEYdZjrkuf18KB7D3Skp1vMnubD4FU7647oejmdaMCQYz
         L8NbiP+GIG+bEsOaG1rkLIeeiAzHFBN3SOKj/fKRbJd9sOCW/0Zd2AJEheYx2lcXXIqa
         Ja/uftzpRUJyZ2IKtPPPtMSUdp4u0A0ljvqSGDwrFF5Y4qva7LrTh3yhlGlpAohTMG3D
         3Xlbc8hczcTykXNglpeliIt2Ih8TBnDCDk3pQ6CYkeQGgcnI/f0yM9W+eGPwTz1DfaPi
         0ZoiIDTSo8Q993pRGL8dA7MZjYj8/F+Ob5JXRP5OBnrUVuzAP293aJDApkKt9OmYzv58
         Btlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=9WqSm8QjrrC2LMqXXxgMTNmy0HuuRT4ZAdb8XQrsMAA=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Fgv3IhxljH2rh2H6VFyy/VaM0fnqxoaAivVckBd2k4QzPMmpr2F5T8lXs5whlEFu7m
         s+1GNL3kJJ9OOemdSepaw0vrehCp4tn4+TLRFqyI4c4jpDrWbRMzcQzI5i5+b6aDA1DI
         l57oIj2LGhE2RFJ9hNgHhiex86vdd/sfn/tms6dEsXzH+E5ctRU+ogxogUZZJcPvU5O1
         pbKWH9BNb7Ay7wi4mEceDzDi6OwR8Gd+0gMYso5LeES3mWVdShYhPcyoj9Jm++S7y9+U
         nnrJjnOQmG+x1cMayQ/zv6TWlibUNyLHqYHbkgapyDHY7q3UdA20dAsUpUAJHDfMfWpt
         DjCw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.47 as permitted sender) smtp.mailfrom=khalfang1366@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id l13-20020a05622a050d00b004310207552asi7010066qtx.93.2024.03.26.00.43.54
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 00:43:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of khalfang1366@gmail.com designates 209.85.221.47 as permitted sender) client-ip=209.85.221.47;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-117--5-vgOcXPQaQiISpDskA7Q-1; Tue, 26 Mar 2024 03:43:53 -0400
X-MC-Unique: -5-vgOcXPQaQiISpDskA7Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 65376101A526
	for <blinux-list@gapps.redhat.com>; Tue, 26 Mar 2024 07:43:53 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 618992166B32; Tue, 26 Mar 2024 07:43:53 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 279A42166B31
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 07:43:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C9E9D84B162
	for <blinux-list@redhat.com>; Tue, 26 Mar 2024 07:43:52 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-417-3uR1V5F7NY6aMfruBjMCCQ-1; Tue, 26 Mar 2024 03:43:50 -0400
X-MC-Unique: 3uR1V5F7NY6aMfruBjMCCQ-1
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-34005b5927eso3624493f8f.1
        for <blinux-list@redhat.com>; Tue, 26 Mar 2024 00:43:50 -0700 (PDT)
X-Received: by 2002:a5d:6306:0:b0:341:b5ca:8f88 with SMTP id i6-20020a5d6306000000b00341b5ca8f88mr265228wru.48.1711439028868;
        Tue, 26 Mar 2024 00:43:48 -0700 (PDT)
Received: from [192.168.1.131] (host-80-41-169-74.as13285.net. [80.41.169.74])
        by smtp.gmail.com with ESMTPSA id cw10-20020a056000090a00b0033e7a102cfesm11478025wrb.64.2024.03.26.00.43.48
        for <blinux-list@redhat.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Mar 2024 00:43:48 -0700 (PDT)
Message-ID: <be8201e8-f1ba-4d17-81a2-11a8047f2038@gmail.com>
Date: Tue, 26 Mar 2024 07:43:47 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: is there a command line Reddit tool?
To: blinux-list@redhat.com
References: <Pine.LNX.4.64.2403252318560.1382143@users.shellworld.net>
 <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
From: Jace Kattalakkis <khalfang1366@gmail.com>
In-Reply-To: <03378586-b24c-4ec5-b2c4-6892d5b7085a@protonmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: KhalFang1366@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of khalfang1366@gmail.com designates 209.85.221.47 as permitted
 sender) smtp.mailfrom=khalfang1366@gmail.com
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

Every time I try using Teddit I get a 403 or 429 though, is there any=20
easy way around this, or?



On 26/03/2024 05:32, 'Rastislav Kish' via blinux-list@redhat.com wrote:
> Hello,
> for reading, I'm personally using the Teddit frontend, which should work
> well in LYNX as well:
> https://codeberg.org/teddit/teddit
>
> My favourite instance is thisone (since it's usually free):
> https://i.opnxng.com
>
> Best regards
>
> Rastislav
>
> D=C5=88a 26. 3. 2024 o 4:22 Karen Lewellen nap=C3=ADsal(a):
>> Hi All,
>> previously, reddit worked well,  at least for reading posts, in both lyn=
x
>> the cat and links the chain.
>> Now, even elinks produces a blocked error message, my guess is that the
>> reddit community is not aware of Linux and these tools for access.Wonder=
ed
>> though if another tool already exists that might be a part of a shell
>> infrastructure?
>> With appreciation,
>> Karen
>>
>>

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

