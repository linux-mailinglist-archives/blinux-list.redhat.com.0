Return-Path: <blinux-list+bncBDM4LSNO5MHBBRESTGVAMGQE2ZXZHAQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2A17E0F9A
	for <lists+blinux-list@lfdr.de>; Sat,  4 Nov 2023 14:38:14 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-66d4aa946cesf47444686d6.1
        for <lists+blinux-list@lfdr.de>; Sat, 04 Nov 2023 06:38:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1699105093; cv=pass;
        d=google.com; s=arc-20160816;
        b=A7CilBRDMLuR283e5Mib4ijZTBPEeTRUiqEC6aJj/TQbEiVa7bz+A2ipIbvqqBY6jL
         TFa78IWR1BhTvCRh8dLLv4AcZta/eyQTTPufdtEVaiqdC5K19FdSveupyDjQ7/kXYosY
         rC6PF16CaGfunaMdbQhI99sASVafaE/kxdkOrQZL9EGQvu16X4Z33tyP8Gxv5o6klwqC
         bi2ph/+iLhXfqaYbFTT5Evm+IGJ7NiNgCBmCLmS+vt7KbUGGYPsBkjDqJrwBPXU1bXGu
         1dthrUSH/clBSVge4cEY08MOQjESgFdmJnvm+rLXUtM3iccb2sjI9pBTaXhmqBJn59LE
         ehlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-transfer-encoding:content-language
         :ui-outboundreport:in-reply-to:from:references:to:subject:user-agent
         :mime-version:date:message-id:delivered-to;
        bh=4Rn9kDbex4+hohrzb9m9JHBPUBZV/H7UTRrQ3zWcJO4=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=N6l1pKLJ5z6ruyM4T9hOzZcswtPdh186mpdeOWj1VKaIVcCFyOxksTqSj2uGegGO5x
         rENs6RiC1WNWI3SgrwghiWgvPl7IczaLBvuthwQcrvGKM+FOH8iM+9sbxBQt3stl4FZ4
         StmSPq3a5zPav1dn0w2vEMBHG2cYTxUlRS97FGChVfiF3CqquJMkCilESPpyrXzdBn7I
         foXcK9yQAdL+5QLNLkpxKBFgOQYe8qKSxd2XQCkUZTK6x1Jo4jZOAGDpFcGON/CvKXDf
         1Bv8cvq3IOlywr2yn6sO35QOLKppNR2dtgu3e8O+bTeAyueaXFhfvm7QfD92pm6iZUvp
         oVMA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699105093; x=1699709893;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4Rn9kDbex4+hohrzb9m9JHBPUBZV/H7UTRrQ3zWcJO4=;
        b=clLY/K5h4W/PJNlG0KaXyd7gu4hEsqvqqlujmpt8ixbS8fKpWvFYYGE0VoJB2VC6q9
         fbbmFHss9JTRKlfMeS+bt+/c9g9RRSyRjCsyLP2F96B/G5hOH9G9S2OGdzDq0X/45PS/
         lPBucHK/58FDkARTkD8GC4+ReaQyV5GwQz8s84olb3iPk1ZLk6dJzRRRWsj7fUPKfo+P
         ix2seYd46QyxaPm+Zbe30SstS3r1jpqsmanjAoVa3a0/uFljNMYUSZ753OetcQ4KJFIN
         VGL1+bTpBIE5x2hfnWIiPBmNK8J+bhUgwIA+oUA/A/qcVGzZXZ2HqWOtj1kRbCoQvRQ0
         MpBw==
X-Gm-Message-State: AOJu0YwWd7oE2nEK6o9wylK1dw+8gdhye1+vMIR9UmavMX+6py8oaKlu
	JJ4VRgK863NKUq3cFp/ZJxpadg==
X-Google-Smtp-Source: AGHT+IEICxnCAjf8ZIGlyVqpC8xLKl3QhXg/aYO4h/y25tnkbrXCUg9HxMQZCHv8fmHk9gWumW5YfA==
X-Received: by 2002:a05:6214:4006:b0:66d:58ab:10d9 with SMTP id kd6-20020a056214400600b0066d58ab10d9mr10039731qvb.2.1699105092790;
        Sat, 04 Nov 2023 06:38:12 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:5412:b0:668:d9c1:f577 with SMTP id
 ql18-20020a056214541200b00668d9c1f577ls1534317qvb.0.-pod-prod-00-us; Sat, 04
 Nov 2023 06:38:12 -0700 (PDT)
X-Received: by 2002:ad4:4dcd:0:b0:66c:edf4:b955 with SMTP id cw13-20020ad44dcd000000b0066cedf4b955mr7934031qvb.21.1699105091920;
        Sat, 04 Nov 2023 06:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1699105091; cv=none;
        d=google.com; s=arc-20160816;
        b=NYTl9RNxMZ8Uk2OogTNfD3PdEMxinZx6Dh665KP83s57gbvSLeVbuH8Uy4/oUqpmUs
         1f3q6ZNlmciTGr7Y7eyz7SVXGW8gP8xk51afQwW4GBa63fw01Smzz3AO6I5qF/IrMann
         FuKzZQlh2RQchd0lzFW4w0RuX6b0bdPH8SWNrABp6jOM8MpySCGEP+XeivkrOBomCz4s
         oOzs2lso2YS89zuJKDc8K/tT0+w98Dtc5R/eroL5MNmueGWuQnZ5CD6C99kSjvDRo61b
         zndnnDuD6wtAs8YLkwIKA8qID+zOw3im2/jqvkeq6hazOKQW/GocBsUNrqC5wqPXz9sy
         bYVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:ui-outboundreport
         :in-reply-to:from:references:to:subject:user-agent:mime-version:date
         :message-id:delivered-to;
        bh=cxX+P/hYLsOf1OBtsXj/SodcBwHkDToQ36qV4cJRuyI=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=woaCwQfuyMW+tONEhbdHJtFmKn9hfSclmb4jMjru1+VjRjqX0ifMHQwiNit9Ss4x3D
         mvIV/vXGjSW2NOSEPF4gZHX0FACtLxfE68buin3O0Rd2mIzY8mQHmUtxwEszXvJjTWT0
         uWzARIJZ6oS/qo4EDPVEFwZ1LB/KD6secF+Ts2ImltPrcfwPdUPbGAe71SLdnu4jovxf
         oHJdiqYz6WbgA+PJIKHo3oZggKgTdMvb8IjJVefP6HVEFyk8AVMPGrlRfDFIsdXZQXYj
         srgJeR7boYbZvBR1S/tlyShccepmBs4W6Vf9i04L+nC4IyX8ekEwxrdMxNXOKuZeWWfn
         g34g==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id m3-20020ad44b63000000b0066d12fe2089si2856825qvx.608.2023.11.04.06.38.11
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Nov 2023 06:38:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) client-ip=74.208.4.200;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-82-TqbWbyaWOF6iqMXsJdOOjA-1; Sat, 04 Nov 2023 09:38:10 -0400
X-MC-Unique: TqbWbyaWOF6iqMXsJdOOjA-1
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com [10.11.54.9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 76ECF101A53B
	for <blinux-list@gapps.redhat.com>; Sat,  4 Nov 2023 13:38:10 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 73B3A492BE9; Sat,  4 Nov 2023 13:38:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C84D492BE0
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 13:38:10 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 2D74E380627D
	for <blinux-list@redhat.com>; Sat,  4 Nov 2023 13:38:10 +0000 (UTC)
Received: from mout.gmx.com (mout.gmx.com [74.208.4.200]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-230-uGN4YNv2OMWur63tUq--JA-1; Sat,
 04 Nov 2023 09:38:07 -0400
X-MC-Unique: uGN4YNv2OMWur63tUq--JA-1
X-UI-Sender-Class: f2cb72be-343f-493d-8ec3-b1efb8d6185a
Received: from johndoe65534.mail.com ([195.16.11.121]) by smtp.mail.com
 (mrgmxus003 [74.208.5.15]) with ESMTPSA (Nemesis) id 0Lb3nj-1rjuC733mL-00keBw
 for <blinux-list@redhat.com>; Sat, 04 Nov 2023 14:38:07 +0100
Message-ID: <03a2fafd-0963-419a-8f6c-9a5d47f6f0f1@mail.com>
Date: Sat, 4 Nov 2023 14:38:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Relaunch complete command after white screen
To: blinux-list@redhat.com
References: <22f4bbd0-963d-4260-b29f-01d9a3639769@gmail.com>
From: john doe <johndoe65534@mail.com>
In-Reply-To: <22f4bbd0-963d-4260-b29f-01d9a3639769@gmail.com>
X-Provags-ID: V03:K1:dZIBPlRbT7ZwmbvFpCrrk+BAZsinSIYFH1nFBJVXEfi85LhFxok
 9q7WOLEV8BVzvatWT+VCgjDjiXp72YoSqQTk7ZkMA1vkYEh6N0PNWXrAR8iN63QyqnV+C9k
 n2o6wQGFCfuMNSB1K4R/SX81SaTtA34EfE51cWBhM15UFolYQuUnfIcsVeTkfnETrsWlLeQ
 N3vfnuuiCoIZNPiq52L/A==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:b8svBHHgFjU=;44yT5hIG/sbtrUODpNwnMSPNtT1
 utPXRtHzPpvT9gITyEtlILWJlg0gGvbLXu3GQYe34VWBaGzNvOAb1UJGh+ItEe6Miy3vLa3re
 S+WLtTiTg+uXZ2kf+xM3I3zjt7ZZQBQuPDoCLAHMlsUQ/dBLJ/QSktC3Rz6wCuquJlbV7jFpw
 4RLBHS4FNxifhtlasFFqgVLwjg95onN7/nAIdKiKxhDDcAjEuRzAnkZDKSDUslSx0Uh2v7c69
 t5jNaoa8e12T9xxK1HdFPta7PORAvd1dtCJQNdgLk7kaiEKX6PGoc7W5XZ1uSupbcjE62MFEO
 FXbayisvy9OXUJ2jba9Y2kbqRhChGsOFQJEnvXDkc7moLRV+1sKe6rHga5nBqIE7gFbI+c2rE
 AG2FcYlCeIjM4ZJmPn1RsyhtvP1ng+zzo9hqktXhzVNvasm54ucjrG872hLy06hrXZRMkVLNy
 CQmlYNC23iJKZxLnfANGRjHnRDW8JWNSSLIvx6Sh+HQXd9xYUUbzuDuUE4xR7tdsG4uUz+NEn
 4L/+I0MR8UnEOKmfFxyfavRRY0KHTjCNpzzChUCx8fAYmvoMZIEt3+9XYIdtm5xLtXPSK0fY3
 fqWUvqQcr/89dYVoFe0VCDVzB8EJzcCku71QHwzl6vUdOv/txhr1gesOFZf35HHcl4u19VhcP
 PUC0ems47FQYfHSXZRvY1J3hFGjEloKXWT3LbyQ5dOlMDU1xTfr0DX7zIxK042o1uyGWuXJw8
 7zfQPS0VVIoF3URyg8WZRbYEDBF9LwsO/M+wvxSwJHbWq7/GIwHSMJLut7ccZvYYTNFgxzu+Q
 qN8Vc+8aceJiIxz9QOgZMpGIMAN07KIXCWj1amsJ4biVo423uEjSbzwp3uJXD09ETDC79oxDR
 4z92Z6l97XTRbKUuc4xqrdxmdmsmK1cVw2U2sqPbrovpcXFPTSc1ZDI1wLWismm9eG4+D2hhC
 YRdppQ==
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.9
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: mail.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: johndoe65534@mail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of johndoe65534@mail.com designates 74.208.4.200 as permitted sender) smtp.mailfrom=johndoe65534@mail.com
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

On 11/4/23 13:29, Pavel Vl=C4=8Dek wrote:
> I think it will be better to start full process again, because when
> I launch virt-manager, I don't see qemu as I know from Fedora, but I can
> see LCX and I don't if it's right. Also the setp 2, it was somethink
> with system configuration was not finished due to long time inactivity,
> step 1 and 3 done, step 4 - creating temporary files was incomplete.
>

With a package manager you are better off removing [1] and installing
again the desired package.

[1] https://man.archlinux.org/man/pacman.8.en#REMOVE_OPTIONS_(APPLY_TO_-R)

--
John Doe

--=20
You received this message because you are subscribed to the Google Groups "=
blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to blinux-list+unsubscribe@redhat.com.

