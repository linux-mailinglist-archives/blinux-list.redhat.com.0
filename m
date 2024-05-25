Return-Path: <blinux-list+bncBCV3N6GOXMCRBRNIZGZAMGQEVP5VBEQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E6A8CF167
	for <lists+blinux-list@lfdr.de>; Sat, 25 May 2024 23:12:39 +0200 (CEST)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-43fb8cc971asf12115611cf.2
        for <lists+blinux-list@lfdr.de>; Sat, 25 May 2024 14:12:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716671558; cv=pass;
        d=google.com; s=arc-20160816;
        b=oARZAhun4egb4oWNE+nd8eRRq9/TcXI0gwGKfKrN43P7y1mxEjDMmC7JSpTdt1Bm1+
         54MPCZrz+JXdZT4CMd3SqmPKohCoApITvi6/jkH1MY9H4jQtdGsbAYFxvlGn3oPWA1hb
         U3nghGY1Z3KOc/tDUY1FbxdvIJk3fro9FnRmNHz4Tt3ABKgAqK2plSdDWhi5JtKLlvoe
         qX9GVV+Gtj4I+CGHQkNaZ2vEqqjmBH79KQ4un6k7TnJBwTIZRDnZqB/6VUJtwRqOD46S
         O8BQJZTXknNv0eLSslg3xQbAAZb8RM1SeBp0W9EGJM+bsC4PvGxg/tU4J1dihVGTcbJ1
         S3yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:mime-version
         :user-agent:references:in-reply-to:date:to:from:subject:message-id
         :delivered-to;
        bh=1bourhLCRyTOvrOItp4CH4WIuOeuiVrPMHyZQuMcsuM=;
        fh=eE1vd4tZOOFN81+ldlw279gwpfiKKnKhHhmzCUrhmks=;
        b=Xu2x+00ubj2wlEhEBneu9DXcA7HzTPLSd0XUGwnOlmXSwEOC2VEN0+u/VYAVVdrX+h
         ucn4yBGJIjE7yaRW0gb7zyW2uhVyZPHIt3M1m0cJVEgF0Drwg/8QNn5b9nGFlKHY5nsE
         iPxHiCooyD0llbJT7a/R/M3qp/WJ6CAHtyYyWwU/43yZtGN09b0rwpqL9PkKu+UCb+am
         aWQ5+hk8pXfFIFrmC0pN5Py/KEfzQHlkoARY9aV51OUfTxzF88Vm1nRIGFjPu//49C7B
         fIqCcELTxCkSrXQImqcvbduhUQ122PyBm7x65o2C62PiHotq9s9zZUXGK9Iz90ykBnZ7
         ibcA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716671558; x=1717276358;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:mime-version:user-agent:references:in-reply-to
         :date:to:from:subject:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1bourhLCRyTOvrOItp4CH4WIuOeuiVrPMHyZQuMcsuM=;
        b=Ws9grhqbHaCT9AY/a4b09REgwqIjskYyzNZM9fQPMjBidwLB8XJxVmWYM4ZgPkhRdC
         cgg04FyVfg3e+/F9OjzP4zvdrZdK7epM4EyGoKgPA0pfooYPc1P9tnbtpB0azxJUe+tQ
         2Hhkih5dfhgYDa/QFOaqfPx3qPpBtJOUrmBa3Ipb/w67cSl/G4AlAge2haHO1Iw8K352
         KuVV89C87DbX3XRmjBBuRtWySZixaOaEnNU98qysMFG/mVBWWGjWWD0TU2+k1ZLpMo4L
         QWZ9ty+DB0VGteic9eZ/tTx6FHMhAEFnAuHVyJm/YFBVfsz9Wc+LdPFYYvwORpw+o41G
         uMcg==
X-Forwarded-Encrypted: i=2; AJvYcCVik6bb6hvTzjk5hJfUrh/SsqrXrrdpUO2ZvSGJwwx2nqBe+pSaGbjsJd0lYuKkTB5Y+k8yd2OREzfrhBbtz7A97jlLoF8JjbHt
X-Gm-Message-State: AOJu0Yw1tjeudm+AhatAmksNXzCVWQGHsbWD/Fw/q8ynnIkDBK7XphIa
	8BBmcncY5eJOccrn+RWA8PukXSDoVhE/0IlVnjc01AeuYWHt5HCmODYar5uo7GA=
X-Google-Smtp-Source: AGHT+IFn9xJCfx0s5pjWMI4wBlaQgCpjjaoXkzga/7Y6wmM6eoCf4IvyzR2gYc7iIhdrFJEj/ARI9Q==
X-Received: by 2002:a05:622a:64d:b0:43e:3da7:b39e with SMTP id d75a77b69052e-43fb0ef2225mr59408471cf.65.1716671557663;
        Sat, 25 May 2024 14:12:37 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f87:0:b0:43a:f936:3cf8 with SMTP id d75a77b69052e-43faf014ebdls22990191cf.2.-pod-prod-06-us;
 Sat, 25 May 2024 14:12:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXa/YGIE4OQgU5L6KTzQfXs6dmKDiC8fFLwXzafsmtwTeC0X6h6amg0WwBzOjdyLdhy6YQWPzcGcShtnO+CtmqknvVG5Ll7CaL6MiDs
X-Received: by 2002:a05:622a:1196:b0:43a:d899:79a6 with SMTP id d75a77b69052e-43fb0e24363mr71669391cf.7.1716671556506;
        Sat, 25 May 2024 14:12:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716671556; cv=none;
        d=google.com; s=arc-20160816;
        b=OUOMrlQ2kwkzjRor/+fXSCLXdu8GjRkzIg2H40PfpK9M24hceZuHE5Fpfz/zKOADkr
         EUsMACrMtB0h4lIpVXN4rZLeY4XF6G7zohjkqP4Dk4H2CXyLE99XXnNTQ+jzdWbdaTVe
         0NJkX/Fht2nh17M0F7WyXFaGmp64w48yjm6TMhljqNK1LDH7Q2ngKNs4hc89L5nu0NXm
         PjgXzwalUCx2dphYeFwV9vCntvRvyuyAJQAkOK25MwWoLAP7EEBYzpvhxIGQdB7IptTA
         NKPZUfgiB98nEHqaftFq81ElaKTPSTzbKlMtaoT2BbQEHk73x93XJ+D2QvrYSqGlnANv
         w9zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:mime-version:user-agent
         :references:in-reply-to:date:to:from:subject:message-id:delivered-to;
        bh=7WS5VLViIjpk4EDzAEU26ZLzpqP92TZS9r3fei5DA68=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=mOyxhmUnEAzBA1XnrZpNVnUK2Jwt/ZUulWhJEToCXamL3ZXfWasOdsmXPwngDkOWHZ
         II7R7VHcIMvIl6DaA6Vd8HmdRW5RSe8szprVze0eG/C2KX3egnDmwJfzRTIgbxpk181N
         fD6a0Cg+/tfD5iT9aw4s46cZG5YGuCqCiz/w/629PlYLU7kHkA63PfeMaR66SeZhMVZ7
         0AiMXtIOnVKUGxp7OKjR9m0cpVZENS8lA1tqbbkFYUH+Iu69zML6yPUejgl6hsKUra3L
         cO0mBo0Crl3S2AI/w+x69Kz70Kv0piNr+almvRRGKp1h0aJx1omSdvF1CV7Q1v0lY2UM
         /rkw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-43fb17bb094si48428541cf.158.2024.05.25.14.12.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 May 2024 14:12:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) client-ip=212.227.17.22;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-558-86uW1BjeOY6Z17LQZycP0w-1; Sat,
 25 May 2024 17:12:34 -0400
X-MC-Unique: 86uW1BjeOY6Z17LQZycP0w-1
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 0D9961955F1E
	for <blinux-list@gapps.redhat.com>; Sat, 25 May 2024 21:12:34 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id F2994194328F; Sat, 25 May 2024 21:12:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F0336194328D
	for <blinux-list@redhat.com>; Sat, 25 May 2024 21:12:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 3820C1956086
	for <blinux-list@redhat.com>; Sat, 25 May 2024 21:12:33 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-377-RoHYE-ZSNsSD1GwcLRf1Ag-1; Sat,
 25 May 2024 17:12:30 -0400
X-MC-Unique: RoHYE-ZSNsSD1GwcLRf1Ag-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from fedora.lan ([136.54.145.217]) by mail.gmx.net (mrgmx105
 [212.227.17.174]) with ESMTPSA (Nemesis) id 1M6Daq-1s8ll70YAa-006fBB for
 <blinux-list@redhat.com>; Sat, 25 May 2024 23:12:29 +0200
Message-ID: <1efa8534ecbee9707fadc617c397697d5f23c006.camel@gmx.it>
Subject: Re: RHVoice in Fedora 40
From: "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Date: Sat, 25 May 2024 17:12:27 -0400
In-Reply-To: <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
References: <0dccc84a-2eff-434d-b089-d1eaca076655@seznam.cz>
	 <c4128c0d1fd8cb70e053c26948b8c86257ab0534.camel@gmx.it>
User-Agent: Evolution 3.52.1 (3.52.1-1.fc40)
MIME-Version: 1.0
X-Provags-ID: V03:K1:DPf0cCsxgrz9V+UwBZo++xcd6lieyWrna+MQXM2/bQB0lSDVRCt
 MHwKKNCGiodiUSjMBaFsqCvOoPBVQO5I1a3jCZtkqG5nybsL+VPD5NxBH7sLs/J684loh0n
 URzIx4srphrqlrSYLmS7sSlB7YDl+iv8v0LbJOaSENZglUDtW209KsWfcKotPS1PcH/v0tK
 sdC/0u9c8S3BtR/vA+tGA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:l7jWI+rXFgs=;EwvVMw1ArG7+W2mxu7SNVrbi/UA
 rS+/v79P89OUlMY81KAqRnxDbjVDWxE+yURBpKZH1rwfcnd7nQGcBORBAuBplR7i6bSAOOHpK
 zG/wKfBUeiMYc4cdWNgYk8UbPA2bzOWhyro8vWWTP9NfqJK5HGvl/GRF/X6mkox9k24HDKAL0
 njehuiXYlMcHUmj33Kwn8gbZlmUNPQLhG4kjBK/NI2dmEHJbJE8yAq5PQoc8w7WK/SMR1u9GR
 r8n0anhfrloHXv5pNsOs0v+XBFnqWSI/QdsI91XSF9eqi5j+Ts9Wz2uKs4/50UV4LwX2FDny7
 Lbh1z+B7PBCRDZYXnbj/nM3E84b5c8hjCuouPxF5RXd/p54l+0oozsSo35B1NfXtN1e3I2cqz
 HrESewmv5VlgKoCzPuySORriMl/V7oRYXTZKGLcVLfVPGVNyqkoOKER+dl9vsPu9mzL5kvMev
 tOxivmBM/RcY0TTI1bwjvtjYKJWHXqf+697ejXj5+L74YPu1M0ESiKyv0vsDKksuGU1pbE3MQ
 XhZ3h5fbs/SR2KQOVjbw4epHkqazqNtEQaQq6Pm7kmDyYvD+VtB0XSevYFVaBQflWx6rMnZAu
 9bqem+h/oN1Xjk6xbzquY8DR3ENeKE89OW8DLMtAVk86hHl+DvBFTlg2X7lrNgNPuffjBMMA1
 KKoG1HD9DtZ8MuKfkubqMxDnSvukj/qNBQ41KFIf66ALLzjNtlXU9I10R1Fn40lLZW0s+n+La
 q1HMVYuq/vMLo+HVlF/LA1q96Xp59KcifihT8UsovFfhZ8d4aAc5trG0cjjT+ukpGp/EU1kB7
 /8n5PVFH9mzURgfuleC+ti7Qas7KxRlNpLa16I37Zpu9+56Ez86OqHs6xRMQjHxErx
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.it
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kyle@gmx.it
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of kyle@gmx.it designates 212.227.17.22 as permitted sender) smtp.mailfrom=kyle@gmx.it
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

In my previous message I mentioned
sudo make install
but I see that RHVoice uses scons instead of make, so
sudo scons install
should be correct for getting everything installed once it is built. Sorry for
the incorrect command.
~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

