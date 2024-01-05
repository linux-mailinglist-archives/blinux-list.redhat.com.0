Return-Path: <blinux-list+bncBCJ6JXF6TECRBHU54GWAMGQER7BSRPA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C528825A65
	for <lists+blinux-list@lfdr.de>; Fri,  5 Jan 2024 19:46:56 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-dbdb8e86842sf2127230276.1
        for <lists+blinux-list@lfdr.de>; Fri, 05 Jan 2024 10:46:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1704480415; cv=pass;
        d=google.com; s=arc-20160816;
        b=pq4/U59SWRi1H2n1TroKY/lLVZ3UYz0aF8M+TuYb3964+qt5qASP5cbrtHuM/uEvDD
         nEQKXjrhqWdb6WviwMt78jpAN7Bcr3+mVCioRPK5qr7+yJiwm/KcI1qi3li+1jrYh1Ki
         wCM94Wua8tagpKYpw6NCBNjtSiNj7LJM9hxeYK4WrZamYyUEVxlrShk+0G/15ruIvDz1
         3Ba2VSpdaFTcOoCzi258YsGIIxWMenpnL4oS9j7tHNulKjLHqXmPLlHm+vMp+xUYa9Gm
         CxvMQYiFPtfRNqcBsY7AJvd2yEP7CHyo2lxq8t7KrFUXUcWvMbnIFKX/ZlHGeHqpHFKo
         aWlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=bcSbI6+sMkns4buZmI6tvUJWaAaXMZu8M1Q/a01aqeg=;
        fh=NhiRoa9rZUAIiJwAv2FkydQH/haDkjxHQo01K7zuU4o=;
        b=YaQSGXOJGYSueOok5dijdZupunC7TliryUBafeGHbMN5+fHifxo7wQeqpw469yCwzA
         CYAYRa1vQISXgvwTeygQ7V5D4DRPCOKeN4oHHjYe442tLEdHw6zALBNXLHCVp4Grao4j
         vMme2TwNwL1rTfx6a1GJ1st8DkT2ulmpiFzhllwwOmUE9gBY0/qYOoVwx+eWntud5vbt
         t3j8ZtHGpMvjQPPpaAlbvW6OALsw6FKBXT2Blb4P17htruQtlezKTFfw08irWX0FRR9T
         7+jlDx0XQqeVdDAsjQmiCJP0U/LuXIbC76sFAv6XYF7nfhh8i+xjxJFOzFM93GWA97WB
         88tA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=neutral (google.com: 209.85.214.171 is neither permitted nor denied by best guess record for domain of vilmar@informal.com.br) smtp.mailfrom=vilmar@informal.com.br
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704480415; x=1705085215;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-language:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bcSbI6+sMkns4buZmI6tvUJWaAaXMZu8M1Q/a01aqeg=;
        b=fe4VzaI6yl35OoT0S35vYMEJ6vrRDLftJaaN1/g51q7CuPzVAZBSR6/noxTW0RvmcJ
         2bH5GJ7nNDVNwQ7X3IyaXRY2a9zVH+OVzmFM5A6M6KNmDMA9yU89brLyIIDNYCJKLJWu
         NAH589VSDDWUyuz73XZL1Zi/3rbbwsv+qqnvdZQjlinsw4pN0ZEgqpKBkPEVk0VBJzzv
         /PpfgX8kfmVNLzxtuKlDrMhOcQBhZxsOGjNZXwpPNPgIw5HFACMZsP+TmbIYyLD9sEtJ
         +JjhXtBrgP4/idvA11nWHF3FslPMxtUD8xZ9tjs1JiZTjVGG3+kZUo5yR/A8vkAPopyh
         iEnQ==
X-Gm-Message-State: AOJu0YwmcRl8e8IItHv6aTHWkewkmMn9mFRM0lXSoycWyQSikmKGN8AR
	JexlcfrjnjfvSqjrO7oTC83TcfQSUDhwtw==
X-Google-Smtp-Source: AGHT+IGWAXDUT2mo76mIJblRRZnWdM4PMmmVhXy2N5WcnyYpJrt+ag7DcIcK3sXJlHieo8Lzv+sNTg==
X-Received: by 2002:a25:ae15:0:b0:db7:dacf:4d47 with SMTP id a21-20020a25ae15000000b00db7dacf4d47mr2144359ybj.67.1704480415010;
        Fri, 05 Jan 2024 10:46:55 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:74ca:0:b0:dbd:45cd:e49f with SMTP id p193-20020a2574ca000000b00dbd45cde49fls656214ybc.0.-pod-prod-03-us;
 Fri, 05 Jan 2024 10:46:54 -0800 (PST)
X-Received: by 2002:a81:6ed5:0:b0:5f0:ff80:8b26 with SMTP id j204-20020a816ed5000000b005f0ff808b26mr2204425ywc.65.1704480413899;
        Fri, 05 Jan 2024 10:46:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1704480413; cv=none;
        d=google.com; s=arc-20160816;
        b=zQNIcNNqvbcj1QABBR3FFdEU4Zfj7uA6RT7plF0QAi43i/9uRbgOIthCXabaHgDhe1
         CzouHJLMAfiE30iqlIm7vbGUaz4ws24bKba/NG7GrTXwxMNRMCDKP3LL9xY8WJuErp5W
         WHZLEmcrc6WrmJRPBnfffqFRS88hpMdCjMt5s+W4ctR+Yr0smxaWM4fGFTBTxFDXo9LM
         IkrTyBGx6JyJVMlJCOvsCS1O7TcgqZQXsTiFews2DFhgyzxCfl2eIR0qQQS/JC/z64Ms
         N00tfjcZ9MXSkHebr9sPE4PHPUBXX9j+ccudkLBrdiDAUgLvZQapKbU8mkN+aWPxfT93
         7ykg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :delivered-to;
        bh=OzNQVv0DcijevaM8X8QeYywMKGcc8pLjhPfHKCrRMZk=;
        fh=NhiRoa9rZUAIiJwAv2FkydQH/haDkjxHQo01K7zuU4o=;
        b=F6dD7sqOtoo5RBWVucSiKHtrmJE1gqlE007vLH/LD/7E3kdOZ7p1QUeZuLuXeWcLBR
         skpOH0cQOMc4YpoS8p1DLbV9kjgdmw278aNnsFd8p1w8KL3NvZtL0N9V+M3GXNCl84Mj
         vUqfhm4OZQ7QyCmKUlgSv99SHi3JG6iB+1Y9GcjezvgngYntevj+3j/08emkbPxrB2ot
         EjAtLaDZcYIiCWBDFVLmWvRfFX1QXXkLLDi/nur7iHKQjf6iP801c4Fw4D0E70slGzmX
         2nIUJRklBWbf8RZaarQ5NwppNqmGJGUvaoG7s1sTXFEzulNQcOZrFkTel9cwVdWJILrt
         WaKA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=neutral (google.com: 209.85.214.171 is neither permitted nor denied by best guess record for domain of vilmar@informal.com.br) smtp.mailfrom=vilmar@informal.com.br
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u8-20020a0cf1c8000000b0067f2dc4cbcbsi2307613qvl.350.2024.01.05.10.46.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jan 2024 10:46:53 -0800 (PST)
Received-SPF: neutral (google.com: 209.85.214.171 is neither permitted nor denied by best guess record for domain of vilmar@informal.com.br) client-ip=209.85.214.171;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-495-enRIa12UPRyr8JUdK_OwyA-1; Fri, 05 Jan 2024 13:46:52 -0500
X-MC-Unique: enRIa12UPRyr8JUdK_OwyA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5ECE7833944
	for <blinux-list@gapps.redhat.com>; Fri,  5 Jan 2024 18:46:52 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5BE642026D6F; Fri,  5 Jan 2024 18:46:52 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 545372026D66
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 18:46:52 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 30CE2101A551
	for <blinux-list@redhat.com>; Fri,  5 Jan 2024 18:46:52 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-77-PK-l5e_IN5KfT3gBqVLFww-1; Fri, 05 Jan 2024 13:46:48 -0500
X-MC-Unique: PK-l5e_IN5KfT3gBqVLFww-1
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1d40eec5e12so13220555ad.1
        for <blinux-list@redhat.com>; Fri, 05 Jan 2024 10:46:48 -0800 (PST)
X-Received: by 2002:a17:902:eb8b:b0:1d4:e1f4:e18 with SMTP id q11-20020a170902eb8b00b001d4e1f40e18mr2438930plg.77.1704480407285;
        Fri, 05 Jan 2024 10:46:47 -0800 (PST)
Received: from ?IPV6:2804:14d:5c51:95a3::1000? ([2804:14d:5c51:95a3::1000])
        by smtp.gmail.com with ESMTPSA id ju16-20020a170903429000b001d3c27e00f2sm1714836plb.284.2024.01.05.10.46.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jan 2024 10:46:46 -0800 (PST)
Message-ID: <5d459c69-9848-4791-9011-aeb3cc3c8000@informal.com.br>
Date: Fri, 5 Jan 2024 15:46:42 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: dragora and upgrading fedora
To: Daniel Crone <dcrone215@gmail.com>,
 Linux for blind general discussion <blinux-list@redhat.com>
References: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
From: =?UTF-8?Q?Jos=C3=A9_Vilmar_Est=C3=A1cio_de_Souza?=
 <vilmar@informal.com.br>
In-Reply-To: <F46D1BA2-10F4-4454-AAF4-3DE130D8C220@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: informal.com.br
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: vilmar@informal.com.br
X-Original-Authentication-Results: mx.google.com;       spf=neutral
 (google.com: 209.85.214.171 is neither permitted nor denied by best guess
 record for domain of vilmar@informal.com.br) smtp.mailfrom=vilmar@informal.com.br
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

I use dnf command line.

On 1/5/24 13:24, Daniel Crone wrote:
> Anyone use dragora to upgrade fedora, or the command line dnf way?
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

